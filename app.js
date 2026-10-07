const categories = [
    "Système",
    "Maintenance",
    "Gaming",
    "Réseau",
    "Stockage",
    "Sécurité",
    "Pilotes",
    "Performance",
    "Windows",
    "Diagnostics",
    "Optimisation",
    "GPU & Affichage",
    "CPU & RAM",
    "Services",
    "Processus",
    "Power & Batterie",
    "Réparation",
    "Outils",
    "Rapports",
    "Avancé"
];

const actionNames = [
    "Afficher les informations Windows",
    "Afficher la version Windows",
    "Afficher le nom du PC",
    "Afficher l'utilisateur courant",
    "Afficher l'architecture système",
    "Afficher les services actifs",
    "Afficher les processus actifs",
    "Afficher les applications installées",
    "Afficher les périphériques",
    "Afficher les pilotes",
    "Afficher les volumes",
    "Afficher les disques",
    "Afficher la mémoire",
    "Afficher la charge CPU",
    "Afficher les informations GPU",
    "Afficher la résolution d'écran",
    "Afficher la fréquence d'écran",
    "Afficher les écrans connectés",
    "Afficher DirectX",
    "Afficher la configuration réseau",
    "Afficher l'adresse IP",
    "Afficher les serveurs DNS",
    "Afficher les connexions réseau",
    "Afficher les routes réseau",
    "Afficher les règles pare-feu",
    "Afficher Microsoft Defender"
];

const tools = Array.from({ length: 500 }, (_, index) => ({
    id: index + 1,
    category: categories[index % categories.length],
    name: actionNames[index % actionNames.length]
}));

const grid = document.getElementById("catalogGrid");
const search = document.getElementById("search");
const category = document.getElementById("category");
const resultCount = document.getElementById("resultCount");

categories.forEach(cat => {
    const option = document.createElement("option");
    option.value = cat;
    option.textContent = cat;
    category.appendChild(option);
});

function render() {

    const query = search.value.trim().toLowerCase();
    const selectedCategory = category.value;

    const filtered = tools.filter(tool => {

        const matchesText =
            !query ||
            tool.name.toLowerCase().includes(query) ||
            tool.category.toLowerCase().includes(query);

        const matchesCategory =
            selectedCategory === "all" ||
            tool.category === selectedCategory;

        return matchesText && matchesCategory;
    });

    resultCount.textContent =
        `${filtered.length} outil${filtered.length > 1 ? "s" : ""}`;

    grid.innerHTML = "";

    const fragment = document.createDocumentFragment();

    filtered.forEach((tool, index) => {

        const card = document.createElement("article");
        card.className = "catalog-card";
        card.style.animationDelay = `${Math.min(index * 8, 180)}ms`;

        card.innerHTML = `
            <div class="catalog-id">
                HUBBOOST / ${String(tool.id).padStart(3, "0")}
            </div>
            <h3>${tool.name}</h3>
            <p>${tool.category}</p>
        `;

        fragment.appendChild(card);
    });

    grid.appendChild(fragment);
}

search.addEventListener("input", render);
category.addEventListener("change", render);

render();

/* Scroll reveal */

const observer = new IntersectionObserver(
    entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add("visible");
                observer.unobserve(entry.target);
            }
        });
    },
    { threshold: .12 }
);

document.querySelectorAll(".reveal").forEach(el => observer.observe(el));

/* Animated counters */

const counters = document.querySelectorAll("[data-counter]");

const counterObserver = new IntersectionObserver(
    entries => {
        entries.forEach(entry => {

            if (!entry.isIntersecting) return;

            const element = entry.target;
            const target = Number(element.dataset.counter);

            let current = 0;
            const duration = 1100;
            const start = performance.now();

            function animate(now) {

                const progress =
                    Math.min((now - start) / duration, 1);

                const eased =
                    1 - Math.pow(1 - progress, 3);

                current = Math.round(target * eased);

                element.textContent = current;

                if (progress < 1) {
                    requestAnimationFrame(animate);
                }
            }

            requestAnimationFrame(animate);

            counterObserver.unobserve(element);
        });
    },
    { threshold: .5 }
);

counters.forEach(counter => counterObserver.observe(counter));

/* Terminal typing effect */

const terminalLines = [
    "HUBBOOST SYSTEM INITIALIZED",
    "> Loading Windows toolkit...",
    "> 500 modules loaded",
    "> Diagnostics READY",
    "> Gaming READY",
    "> Network READY",
    "> Security READY"
];

const terminal = document.querySelector(".terminal-body");

let terminalIndex = 0;

setInterval(() => {

    terminalIndex++;

    if (terminalIndex >= terminalLines.length) {
        terminalIndex = 0;
    }

}, 2600);

/* Mouse motion */

document.addEventListener("mousemove", event => {

    const x = event.clientX / window.innerWidth - .5;
    const y = event.clientY / window.innerHeight - .5;

    document.querySelectorAll(".orb").forEach((orb, index) => {

        const strength = (index + 1) * 8;

        orb.style.transform =
            `translate(${x * strength}px, ${y * strength}px)`;
    });
});
