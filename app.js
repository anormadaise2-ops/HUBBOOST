"use strict";

/* =========================================================
   HUBBOOST - APP.JS
   Frontend:
   - Auth Discord / GitHub
   - Session utilisateur
   - Forum
   - Recherche
   - Catégories
   - Création de sujets
   - Réponses
   - Suppression
   ========================================================= */

const API =
    window.HUBBOOST_API ||
    "http://127.0.0.1:5000";

/* =========================================================
   UTILITAIRES
   ========================================================= */

const $ = (id) => document.getElementById(id);

function escapeHTML(value) {
    return String(value ?? "")
        .replace(/&/g, "&amp;")
        .replace(/</g, "&lt;")
        .replace(/>/g, "&gt;")
        .replace(/"/g, "&quot;")
        .replace(/'/g, "&#039;");
}

function formatDate(dateString) {
    if (!dateString) return "Date inconnue";

    const date = new Date(dateString);

    if (Number.isNaN(date.getTime())) {
        return "Date inconnue";
    }

    return date.toLocaleString("fr-FR", {
        dateStyle: "medium",
        timeStyle: "short"
    });
}

function truncate(text, length = 180) {
    text = String(text ?? "");

    if (text.length <= length) {
        return text;
    }

    return text.slice(0, length) + "…";
}

async function apiFetch(endpoint, options = {}) {
    const config = {
        credentials: "include",
        ...options,
        headers: {
            "Content-Type": "application/json",
            ...(options.headers || {})
        }
    };

    const response = await fetch(`${API}${endpoint}`, config);

    let data = null;

    try {
        data = await response.json();
    } catch {
        data = {
            success: false,
            error: "Réponse invalide du serveur."
        };
    }

    if (!response.ok) {
        const error = new Error(
            data?.error ||
            `Erreur HTTP ${response.status}`
        );

        error.status = response.status;
        error.data = data;

        throw error;
    }

    return data;
}

function showMessage(element, message, type = "info") {
    if (!element) return;

    element.textContent = message;
    element.className = `result ${type}`;
    element.style.display = "block";
}

function hideMessage(element) {
    if (!element) return;

    element.textContent = "";
    element.style.display = "none";
}

/* =========================================================
   ÉTAT GLOBAL
   ========================================================= */

const state = {
    user: null,
    authenticated: false,

    forum: {
        page: 1,
        limit: 10,
        category: "",
        search: "",
        totalPages: 1,
        currentPost: null
    }
};

/* =========================================================
   MODALES
   ========================================================= */

function openModal(modal) {
    if (!modal) return;

    modal.classList.add("active");
    modal.style.display = "flex";
}

function closeModal(modal) {
    if (!modal) return;

    modal.classList.remove("active");
    modal.style.display = "none";
}

function closeAllModals() {
    document
        .querySelectorAll(".modal")
        .forEach((modal) => {
            modal.classList.remove("active");
            modal.style.display = "none";
        });
}

/* =========================================================
   AUTHENTIFICATION
   ========================================================= */

async function loadCurrentUser() {
    try {
        const data = await apiFetch("/api/auth/me");

        state.authenticated = Boolean(data.authenticated);
        state.user = data.user || null;

        updateAccountUI();

        return state.user;
    } catch (error) {
        console.error("Impossible de récupérer la session :", error);

        state.authenticated = false;
        state.user = null;

        updateAccountUI();

        return null;
    }
}

function updateAccountUI() {
    const accountBar = $("accountBar");
    const accountInfo = $("accountInfo");
    const forumLogin = $("forumLogin");

    const accountUsername = $("accountUsername");
    const accountProvider = $("accountProvider");
    const accountAvatar = $("accountAvatar");

    if (state.authenticated && state.user) {
        if (accountBar) {
            accountBar.style.display = "flex";
        }

        if (accountInfo) {
            accountInfo.style.display = "flex";
        }

        if (forumLogin) {
            forumLogin.style.display = "none";
        }

        if (accountUsername) {
            accountUsername.textContent =
                state.user.username || "Utilisateur";
        }

        if (accountProvider) {
            accountProvider.textContent =
                state.user.provider
                    ? `Connecté avec ${state.user.provider}`
                    : "Compte connecté";
        }

        if (accountAvatar) {
            if (state.user.avatar_url) {
                accountAvatar.src = state.user.avatar_url;
                accountAvatar.style.display = "block";
            } else {
                accountAvatar.removeAttribute("src");
                accountAvatar.style.display = "none";
            }
        }
    } else {
        if (accountBar) {
            accountBar.style.display = "none";
        }

        if (accountInfo) {
            accountInfo.style.display = "none";
        }

        if (forumLogin) {
            forumLogin.style.display = "block";
        }
    }
}

function loginDiscord() {
    window.location.href =
        `${API}/api/auth/discord`;
}

function loginGithub() {
    window.location.href =
        `${API}/api/auth/github`;
}

async function logout() {
    try {
        await apiFetch("/api/auth/logout", {
            method: "POST"
        });

        state.user = null;
        state.authenticated = false;

        updateAccountUI();
        closeAllModals();

        await loadForum();

    } catch (error) {
        console.error("Erreur de déconnexion :", error);

        alert(
            error?.message ||
            "Impossible de se déconnecter."
        );
    }
}

/* =========================================================
   COMPTE
   ========================================================= */

function openAccountModal() {
    const modal = $("accountModal");

    if (!modal) return;

    updateAccountUI();

    openModal(modal);
}

function setupAccountButton() {
    const buttons = [
        $("accountButton"),
        $("openAccount"),
        $("loginAccount")
    ];

    buttons.forEach((button) => {
        if (!button) return;

        button.addEventListener(
            "click",
            openAccountModal
        );
    });

    const discord = $("loginDiscord");

    if (discord) {
        discord.addEventListener(
            "click",
            loginDiscord
        );
    }

    const github = $("loginGithub");

    if (github) {
        github.addEventListener(
            "click",
            loginGithub
        );
    }

    const logoutButton = $("logoutAccount");

    if (logoutButton) {
        logoutButton.addEventListener(
            "click",
            logout
        );
    }
}

/* =========================================================
   FORUM
   ========================================================= */

async function loadForum() {
    const forumList = $("forumList");

    if (forumList) {
        forumList.innerHTML = `
            <div class="forum-loading">
                Chargement des sujets...
            </div>
        `;
    }

    const params = new URLSearchParams();

    params.set(
        "page",
        String(state.forum.page)
    );

    params.set(
        "limit",
        String(state.forum.limit)
    );

    if (state.forum.category) {
        params.set(
            "category",
            state.forum.category
        );
    }

    if (state.forum.search) {
        params.set(
            "search",
            state.forum.search
        );
    }

    try {
        const data = await apiFetch(
            `/api/forum/posts?${params.toString()}`
        );

        const posts = Array.isArray(data.posts)
            ? data.posts
            : [];

        const pagination =
            data.pagination || {};

        state.forum.totalPages =
            Math.max(
                1,
                Number(pagination.pages || 1)
            );

        renderForum(posts);
        renderPagination(pagination);

    } catch (error) {
        console.error(
            "Erreur chargement forum :",
            error
        );

        if (forumList) {
            forumList.innerHTML = `
                <div class="forum-error">
                    <strong>Impossible de charger le forum.</strong>
                    <p>${escapeHTML(
                        error?.message ||
                        "Erreur serveur."
                    )}</p>
                    <button id="retryForum">
                        Réessayer
                    </button>
                </div>
            `;

            const retry = $("retryForum");

            if (retry) {
                retry.addEventListener(
                    "click",
                    loadForum
                );
            }
        }
    }
}

function renderForum(posts) {
    const forumList = $("forumList");

    if (!forumList) return;

    if (!posts.length) {
        forumList.innerHTML = `
            <div class="forum-empty">
                <div class="forum-empty-icon">💬</div>
                <h3>Aucun sujet</h3>
                <p>
                    Aucun sujet ne correspond à ta recherche.
                </p>
            </div>
        `;

        return;
    }

    forumList.innerHTML = posts
        .map((post) => {
            const author =
                post.author?.username ||
                "Utilisateur";

            const avatar =
                post.author?.avatar_url ||
                "";

            return `
                <article
                    class="forum-post"
                    data-post-id="${Number(post.id)}"
                >
                    <div class="forum-post-header">

                        <div class="forum-author">

                            ${
                                avatar
                                    ? `
                                        <img
                                            class="forum-avatar"
                                            src="${escapeHTML(avatar)}"
                                            alt=""
                                        >
                                      `
                                    : `
                                        <div class="forum-avatar-placeholder">
                                            ${escapeHTML(
                                                author
                                                    .charAt(0)
                                                    .toUpperCase()
                                            )}
                                        </div>
                                      `
                            }

                            <div>
                                <strong>
                                    ${escapeHTML(author)}
                                </strong>

                                <small>
                                    ${formatDate(
                                        post.created_at
                                    )}
                                </small>
                            </div>

                        </div>

                        <span class="forum-category">
                            ${escapeHTML(
                                post.category || "general"
                            )}
                        </span>

                    </div>

                    <div class="forum-post-body">

                        <h3>
                            ${escapeHTML(post.title)}
                        </h3>

                        <p>
                            ${escapeHTML(
                                truncate(post.content)
                            )}
                        </p>

                    </div>

                    <div class="forum-post-footer">

                        <span>
                            💬 ${
                                Number(
                                    post.reply_count || 0
                                )
                            } réponse${
                                Number(
                                    post.reply_count || 0
                                ) > 1
                                    ? "s"
                                    : ""
                            }
                        </span>

                        <button
                            class="forum-open-post"
                            data-post-id="${Number(post.id)}"
                        >
                            Ouvrir
                        </button>

                    </div>
                </article>
            `;
        })
        .join("");

    document
        .querySelectorAll(".forum-open-post")
        .forEach((button) => {
            button.addEventListener(
                "click",
                () => {
                    const postId =
                        Number(
                            button.dataset.postId
                        );

                    openPost(postId);
                }
            );
        });
}

/* =========================================================
   CATÉGORIES
   ========================================================= */

function setupCategories() {
    document
        .querySelectorAll(
            "[data-forum-category]"
        )
        .forEach((button) => {
            button.addEventListener(
                "click",
                () => {
                    const category =
                        button.dataset.forumCategory || "";

                    state.forum.category =
                        category === "all"
                            ? ""
                            : category;

                    state.forum.page = 1;

                    document
                        .querySelectorAll(
                            "[data-forum-category]"
                        )
                        .forEach((item) => {
                            item.classList.remove(
                                "active"
                            );
                        });

                    button.classList.add(
                        "active"
                    );

                    loadForum();
                }
            );
        });
}

/* =========================================================
   RECHERCHE
   ========================================================= */

function setupForumSearch() {
    const search = $("forumSearch");

    if (!search) return;

    let timeout = null;

    search.addEventListener(
        "input",
        () => {
            clearTimeout(timeout);

            timeout = setTimeout(() => {
                state.forum.search =
                    search.value.trim();

                state.forum.page = 1;

                loadForum();
            }, 350);
        }
    );

    search.addEventListener(
        "keydown",
        (event) => {
            if (event.key !== "Enter") {
                return;
            }

            event.preventDefault();

            state.forum.search =
                search.value.trim();

            state.forum.page = 1;

            loadForum();
        }
    );
}

/* =========================================================
   PAGINATION
   ========================================================= */

function renderPagination(pagination) {
    const container =
        $("forumPagination");

    if (!container) return;

    const page =
        Number(pagination.page || 1);

    const pages =
        Math.max(
            1,
            Number(pagination.pages || 1)
        );

    if (pages <= 1) {
        container.innerHTML = "";
        return;
    }

    let html = "";

    html += `
        <button
            class="forum-page-button"
            data-page="${page - 1}"
            ${page <= 1 ? "disabled" : ""}
        >
            ←
        </button>
    `;

    const start =
        Math.max(1, page - 2);

    const end =
        Math.min(pages, page + 2);

    for (
        let current = start;
        current <= end;
        current++
    ) {
        html += `
            <button
                class="forum-page-button ${
                    current === page
                        ? "active"
                        : ""
                }"
                data-page="${current}"
            >
                ${current}
            </button>
        `;
    }

    html += `
        <button
            class="forum-page-button"
            data-page="${page + 1}"
            ${page >= pages ? "disabled" : ""}
        >
            →
        </button>
    `;

    container.innerHTML = html;

    container
        .querySelectorAll(
            ".forum-page-button"
        )
        .forEach((button) => {
            button.addEventListener(
                "click",
                () => {
                    const target =
                        Number(
                            button.dataset.page
                        );

                    if (
                        target < 1 ||
                        target > pages
                    ) {
                        return;
                    }

                    state.forum.page = target;

                    loadForum();

                    const community =
                        $("community");

                    if (community) {
                        community.scrollIntoView({
                            behavior: "smooth"
                        });
                    }
                }
            );
        });
}

/* =========================================================
   OUVRIR UN SUJET
   ========================================================= */

async function openPost(postId) {
    if (!postId) return;

    const modal = $("postModal");

    if (!modal) return;

    const title = $("postTitle");
    const category = $("postCategory");
    const author = $("postAuthor");
    const content = $("postContent");
    const replyList = $("replyList");

    if (title) {
        title.textContent = "Chargement...";
    }

    if (category) {
        category.textContent = "";
    }

    if (author) {
        author.textContent = "";
    }

    if (content) {
        content.textContent = "";
    }

    if (replyList) {
        replyList.innerHTML = `
            <div>
                Chargement des réponses...
            </div>
        `;
    }

    openModal(modal);

    try {
        const data =
            await apiFetch(
                `/api/forum/posts/${postId}`
            );

        if (!data.success || !data.post) {
            throw new Error(
                "Sujet introuvable."
            );
        }

        state.forum.currentPost =
            data.post;

        renderPost(data.post);

    } catch (error) {
        console.error(
            "Erreur ouverture sujet :",
            error
        );

        if (content) {
            content.textContent =
                error?.message ||
                "Impossible de charger le sujet.";
        }
    }
}

function renderPost(post) {
    const title = $("postTitle");
    const category = $("postCategory");
    const author = $("postAuthor");
    const content = $("postContent");
    const replyList = $("replyList");

    if (title) {
        title.textContent =
            post.title || "Sujet";
    }

    if (category) {
        category.textContent =
            post.category || "general";
    }

    if (author) {
        author.textContent =
            `${post.author?.username || "Utilisateur"} • ${formatDate(post.created_at)}`;
    }

    if (content) {
        content.textContent =
            post.content || "";
    }

    if (replyList) {
        const replies =
            Array.isArray(post.replies)
                ? post.replies
                : [];

        if (!replies.length) {
            replyList.innerHTML = `
                <div class="forum-empty-replies">
                    Aucune réponse pour le moment.
                </div>
            `;
        } else {
            replyList.innerHTML =
                replies
                    .map(renderReply)
                    .join("");

            setupDeleteButtons();
        }
    }

    updateReplyFormState();
}

function renderReply(reply) {
    const author =
        reply.author?.username ||
        "Utilisateur";

    const avatar =
        reply.author?.avatar_url ||
        "";

    const isOwner =
        state.user &&
        reply.author_id === state.user.id;

    return `
        <div
            class="forum-reply"
            data-reply-id="${Number(reply.id)}"
        >

            <div class="forum-reply-header">

                <div class="forum-author">

                    ${
                        avatar
                            ? `
                                <img
                                    class="forum-avatar"
                                    src="${escapeHTML(avatar)}"
                                    alt=""
                                >
                              `
                            : `
                                <div class="forum-avatar-placeholder">
                                    ${escapeHTML(
                                        author
                                            .charAt(0)
                                            .toUpperCase()
                                    )}
                                </div>
                              `
                    }

                    <div>
                        <strong>
                            ${escapeHTML(author)}
                        </strong>

                        <small>
                            ${formatDate(
                                reply.created_at
                            )}
                        </small>
                    </div>

                </div>

                ${
                    isOwner
                        ? `
                            <button
                                class="delete-reply"
                                data-reply-id="${Number(reply.id)}"
                            >
                                Supprimer
                            </button>
                          `
                        : ""
                }

            </div>

            <div class="forum-reply-content">
                ${escapeHTML(reply.content)}
            </div>

        </div>
    `;
}

/* =========================================================
   CRÉATION DE SUJET
   ========================================================= */

function openTopicModal() {
    const modal = $("topicModal");

    if (!modal) return;

    if (!state.authenticated) {
        openAccountModal();
        return;
    }

    const form = $("topicForm");
    const result = $("topicResult");

    if (form) {
        form.reset();
    }

    hideMessage(result);

    openModal(modal);
}

async function createTopic(event) {
    event.preventDefault();

    if (!state.authenticated) {
        openAccountModal();
        return;
    }

    const titleInput =
        $("topicTitle");

    const categoryInput =
        $("topicCategory");

    const contentInput =
        $("topicContent");

    const result =
        $("topicResult");

    const title =
        titleInput?.value.trim() || "";

    const category =
        categoryInput?.value.trim().toLowerCase() ||
        "general";

    const content =
        contentInput?.value.trim() || "";

    if (!title) {
        showMessage(
            result,
            "Le titre est obligatoire.",
            "error"
        );
        return;
    }

    if (!content) {
        showMessage(
            result,
            "Le contenu est obligatoire.",
            "error"
        );
        return;
    }

    try {
        showMessage(
            result,
            "Publication du sujet...",
            "info"
        );

        const data =
            await apiFetch(
                "/api/forum/posts",
                {
                    method: "POST",
                    body: JSON.stringify({
                        title,
                        category,
                        content
                    })
                }
            );

        if (!data.success) {
            throw new Error(
                data.error ||
                "Impossible de créer le sujet."
            );
        }

        showMessage(
            result,
            "Sujet publié avec succès !",
            "success"
        );

        state.forum.page = 1;
        state.forum.search = "";
        state.forum.category = "";

        const search =
            $("forumSearch");

        if (search) {
            search.value = "";
        }

        setTimeout(() => {
            closeModal(
                $("topicModal")
            );

            loadForum();

            if (data.post?.id) {
                openPost(
                    data.post.id
                );
            }
        }, 500);

    } catch (error) {
        console.error(
            "Erreur création sujet :",
            error
        );

        showMessage(
            result,
            error?.message ||
            "Erreur pendant la publication.",
            "error"
        );
    }
}

/* =========================================================
   RÉPONSES
   ========================================================= */

function updateReplyFormState() {
    const form = $("replyForm");

    if (!form) return;

    const content =
        $("replyContent");

    const result =
        $("replyResult");

    if (!state.authenticated) {
        form.style.display = "none";

        if (result) {
            showMessage(
                result,
                "Connecte-toi avec Discord ou GitHub pour répondre.",
                "info"
            );
        }

        return;
    }

    form.style.display = "block";

    if (result) {
        hideMessage(result);
    }

    if (content) {
        content.disabled = false;
    }
}

async function createReply(event) {
    event.preventDefault();

    if (!state.authenticated) {
        openAccountModal();
        return;
    }

    const post =
        state.forum.currentPost;

    if (!post?.id) {
        return;
    }

    const input =
        $("replyContent");

    const result =
        $("replyResult");

    const content =
        input?.value.trim() || "";

    if (!content) {
        showMessage(
            result,
            "La réponse est obligatoire.",
            "error"
        );

        return;
    }

    try {
        showMessage(
            result,
            "Publication...",
            "info"
        );

        const data =
            await apiFetch(
                `/api/forum/posts/${post.id}/replies`,
                {
                    method: "POST",
                    body: JSON.stringify({
                        content
                    })
                }
            );

        if (!data.success) {
            throw new Error(
                data.error ||
                "Impossible de publier la réponse."
            );
        }

        if (input) {
            input.value = "";
        }

        showMessage(
            result,
            "Réponse publiée !",
            "success"
        );

        await openPost(post.id);

        setTimeout(() => {
            hideMessage(result);
        }, 1500);

    } catch (error) {
        console.error(
            "Erreur réponse :",
            error
        );

        showMessage(
            result,
            error?.message ||
            "Erreur pendant la publication.",
            "error"
        );
    }
}

/* =========================================================
   SUPPRESSION
   ========================================================= */

function setupDeleteButtons() {
    document
        .querySelectorAll(
            ".delete-reply"
        )
        .forEach((button) => {
            button.addEventListener(
                "click",
                async () => {
                    const replyId =
                        Number(
                            button.dataset.replyId
                        );

                    if (!replyId) return;

                    const confirmed =
                        window.confirm(
                            "Supprimer cette réponse ?"
                        );

                    if (!confirmed) {
                        return;
                    }

                    await deleteReply(
                        replyId
                    );
                }
            );
        });
}

async function deleteReply(replyId) {
    try {
        await apiFetch(
            `/api/forum/replies/${replyId}`,
            {
                method: "DELETE"
            }
        );

        if (
            state.forum.currentPost?.id
        ) {
            await openPost(
                state.forum.currentPost.id
            );
        }

        await loadForum();

    } catch (error) {
        console.error(
            "Erreur suppression réponse :",
            error
        );

        alert(
            error?.message ||
            "Impossible de supprimer la réponse."
        );
    }
}

/* =========================================================
   SUPPRESSION D'UN SUJET
   ========================================================= */

async function deleteCurrentPost() {
    const post =
        state.forum.currentPost;

    if (!post?.id) return;

    if (!state.user) {
        openAccountModal();
        return;
    }

    if (
        Number(post.author_id) !==
        Number(state.user.id)
    ) {
        alert(
            "Tu peux uniquement supprimer tes propres sujets."
        );

        return;
    }

    const confirmed =
        window.confirm(
            "Supprimer définitivement ce sujet ?"
        );

    if (!confirmed) {
        return;
    }

    try {
        await apiFetch(
            `/api/forum/posts/${post.id}`,
            {
                method: "DELETE"
            }
        );

        closeModal(
            $("postModal")
        );

        state.forum.currentPost =
            null;

        await loadForum();

    } catch (error) {
        console.error(
            "Erreur suppression sujet :",
            error
        );

        alert(
            error?.message ||
            "Impossible de supprimer le sujet."
        );
    }
}

/* =========================================================
   BOUTONS DU FORUM
   ========================================================= */

function setupForumButtons() {
    const refresh =
        $("refreshForum");

    if (refresh) {
        refresh.addEventListener(
            "click",
            () => {
                loadForum();
            }
        );
    }

    const newTopic =
        $("newTopic");

    if (newTopic) {
        newTopic.addEventListener(
            "click",
            openTopicModal
        );
    }

    const topicForm =
        $("topicForm");

    if (topicForm) {
        topicForm.addEventListener(
            "submit",
            createTopic
        );
    }

    const replyForm =
        $("replyForm");

    if (replyForm) {
        replyForm.addEventListener(
            "submit",
            createReply
        );
    }
}

/* =========================================================
   FERMETURE DES MODALES
   ========================================================= */

function setupModalClosing() {
    document
        .querySelectorAll(
            "[data-close-modal]"
        )
        .forEach((button) => {
            button.addEventListener(
                "click",
                () => {
                    const target =
                        button.dataset.closeModal;

                    const modal =
                        $(target);

                    if (modal) {
                        closeModal(modal);
                    }
                }
            );
        });

    document
        .querySelectorAll(".modal")
        .forEach((modal) => {
            modal.addEventListener(
                "click",
                (event) => {
                    if (
                        event.target ===
                        modal
                    ) {
                        closeModal(modal);
                    }
                }
            );
        });

    document.addEventListener(
        "keydown",
        (event) => {
            if (event.key !== "Escape") {
                return;
            }

            closeAllModals();
        }
    );
}

/* =========================================================
   NAVIGATION
   ========================================================= */

function setupNavigation() {
    document
        .querySelectorAll(
            'a[href^="#"]'
        )
        .forEach((link) => {
            link.addEventListener(
                "click",
                (event) => {
                    const targetId =
                        link
                            .getAttribute("href")
                            ?.substring(1);

                    if (!targetId) {
                        return;
                    }

                    const target =
                        $(targetId);

                    if (!target) {
                        return;
                    }

                    event.preventDefault();

                    target.scrollIntoView({
                        behavior: "smooth",
                        block: "start"
                    });
                }
            );
        });
}

/* =========================================================
   TEST BACKEND
   ========================================================= */

async function checkBackend() {
    try {
        const data =
            await apiFetch(
                "/api/health"
            );

        console.log(
            "HUBBOOST Backend:",
            data
        );

        document.body.dataset.backend =
            "online";

        return true;

    } catch (error) {
        console.warn(
            "HUBBOOST Backend hors ligne :",
            error.message
        );

        document.body.dataset.backend =
            "offline";

        return false;
    }
}

/* =========================================================
   INITIALISATION
   ========================================================= */

async function init() {
    console.log(
        "🚀 HUBBOOST frontend démarrage..."
    );

    console.log(
        "API:",
        API
    );

    setupAccountButton();
    setupCategories();
    setupForumSearch();
    setupForumButtons();
    setupModalClosing();
    setupNavigation();

    await checkBackend();
    await loadCurrentUser();
    await loadForum();

    console.log(
        "✅ HUBBOOST frontend prêt."
    );
}

/* =========================================================
   DÉMARRAGE
   ========================================================= */

if (
    document.readyState ===
    "loading"
) {
    document.addEventListener(
        "DOMContentLoaded",
        init
    );
} else {
    init();
}