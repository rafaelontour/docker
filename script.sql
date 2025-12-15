-- ==========================================================
-- CRIAÇÃO DO SCHEMA
-- ==========================================================
-- CREATE SCHEMA IF NOT EXISTS academico;

-- ==========================================================
-- TABELA PESQUISADOR
-- ==========================================================
CREATE TABLE IF NOT EXISTS pesquisadorT (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- ==========================================================
-- TABELA ARTIGO
-- ==========================================================
CREATE TABLE IF NOT EXISTS artigo (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    resumo TEXT NOT NULL,
    conteudo TEXT NOT NULL,
    pesquisador_id INTEGER NOT NULL,
    CONSTRAINT fk_artigo_pesquisador
        FOREIGN KEY (pesquisador_id)
        REFERENCES pesquisador(id)
        ON DELETE CASCADE
);

-- ==========================================================
-- INSERTS DE PESQUISADORES
-- ==========================================================
INSERT INTO pesquisador (nome) VALUES
    ('Ana Beatriz Costa'),
    ('Rafael Monteiro'),
    ('Camila Andrade'),
    ('Thiago Farias'),
    ('Juliana Duarte');

-- ==========================================================
-- INSERTS DE ARTIGOS
-- ==========================================================
INSERT INTO artigo (titulo, resumo, conteudo, pesquisador_id) VALUES
    (
        'Aplicações de IA na Saúde',
        'Um estudo sobre como algoritmos de inteligência artificial estão transformando diagnósticos clínicos.',
        'Este artigo apresenta uma revisão detalhada sobre o uso de redes neurais, modelos preditivos e sistemas de suporte à decisão na medicina moderna. A análise inclui estudos de caso, limitações atuais e perspectivas futuras para integração total em sistemas hospitalares.',
        1
    ),
    (
        'O Impacto da Computação Distribuída',
        'Discussão sobre como sistemas distribuídos aumentam a resiliência e escalabilidade.',
        'A computação distribuída permite a execução de tarefas complexas entre múltiplas máquinas, promovendo maior eficiência e tolerância a falhas. Este trabalho analisa arquiteturas, protocolos de comunicação e casos reais de uso em ambientes corporativos.',
        2
    ),
    (
        'Técnicas Modernas de Testes de Software',
        'Uma análise sobre metodologias e ferramentas utilizadas para garantir qualidade.',
        'Ferramentas de CI/CD, testes automatizados, análise estática e fuzzing são discutidos neste trabalho. O conteúdo explora práticas modernas, desafios recorrentes e recomendações para equipes de desenvolvimento de médio e grande porte.',
        3
    ),
    (
        'Sistemas de Recomendação e Personalização',
        'Exploração de algoritmos utilizados em plataformas digitais.',
        'Modelos baseados em filtragem colaborativa, conteúdo e abordagens híbridas são dissecados neste estudo. O artigo também discute problemas de viés, privacidade e impacto social de sistemas automatizados de recomendação.',
        4
    ),
    (
        'Criptografia Aplicada na Web Moderna',
        'Visão geral sobre protocolos e práticas de segurança.',
        'Com o avanço das ameaças cibernéticas, técnicas criptográficas continuam sendo fundamentais. Este artigo apresenta o funcionamento de TLS, certificados digitais, hashing, algoritmos de chave pública e boas práticas de implementação.',
        5
    );
