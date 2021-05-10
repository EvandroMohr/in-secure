/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS xss;

USE xss;

-- CRIAR TABELAS PRA XSS

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `log` text NOT NULL,
  `hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


INSERT INTO `audit_log` (`id`, `log`, `hora`) VALUES
(9152, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:31:40'),
(9153, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1hcmPDo28gZG9ubyBkbyBzaXRlIiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJ1aWQiOjF9.maQil1sjd-UYoomiJjm_29gCnMue7OszkmvOR8j_5F8', '2016-12-17 15:31:55'),
(9154, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:31:55'),
(9155, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1hcmPDo28gZG9ubyBkbyBzaXRlIiwiYWRtaW4iOnRydWUsInVzZXJuYW1lIjoiYWRtaW4iLCJ1aWQiOjF9.maQil1sjd-UYoomiJjm_29gCnMue7OszkmvOR8j_5F8', '2016-12-17 15:36:00'),
(9156, 'PHPSESSID=pes1h2essmmm6svo0ue52l3ma6', '2016-12-17 15:36:00');

ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9157;




-- IMPORT DUMP INSECURE --

USE insecure;

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `comentario` mediumtext COLLATE utf8_bin NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_noticia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `comentario`, `data`, `id_noticia`) VALUES
(1, 'João do Caminhão', 'Notícia legal =)', '2016-10-18 19:25:08', 1),
(2, 'Zé da silva', 'só o show', '2016-10-19 12:41:14', 2),
(3, 'João Hacker', 'Isso aí é conversa furada. Eu vou invadir seu sistema.', '2016-10-19 12:43:16', 2);

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `texto` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `autor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `texto`, `autor`) VALUES
(1, 'Sempre considere a segurança', 'A maioria das definições de Segurança da Informação (SI) (Brostoff, 2004; Morris e Thompson, 1979; Sieberg, 2005; Smith, 2002;) pode ser sumarizada como a proteção contra o uso ou acesso não-autorizado à informação, bem como a proteção contra a negação do serviço a usuários autorizados, enquanto a integridade e a confidencialidade dessa informação são preservadas. A SI não está confinada a sistemas de computação, nem à informação em formato eletrônico. Ela se aplica a todos os aspectos de proteção da informação ou dados, em qualquer forma. O nível de proteção deve, em qualquer situação, corresponder ao valor dessa informação e aos prejuízos que poderiam decorrer do uso impróprio da mesma. É importante lembrar que a SI também cobre toda a infraestrutura que permite o seu uso, como processos, sistemas, serviços, tecnologias, e outros.\r\n\r\nA Segurança da Informação se refere à proteção existente sobre as informações de uma determinada empresa ou pessoa, isto é, aplica-se tanto as informações corporativas quanto às pessoais. Entende-se por informação todo e qualquer conteúdo ou dado que tenha valor para alguma organização ou pessoa. Ela pode estar guardada para uso restrito ou exposta ao público para consulta ou aquisição.\r\n\r\nPodem ser estabelecidas métricas (com o uso ou não de ferramentas) para a definição do nível de segurança existente e, com isto, serem estabelecidas as bases para análise da melhoria ou piora da situação de segurança existente. A segurança de uma determinada informação pode ser afetada por fatores comportamentais e de uso de quem se utiliza dela, pelo ambiente ou infraestrutura que a cerca ou por pessoas mal intencionadas que têm o objetivo de furtar, destruir ou modificar tal informação.\r\n\r\nA tríade CIA (Confidentiality, Integrity and Availability) -- Confidencialidade, Integridade e Disponibilidade -- representa os principais atributos que, atualmente, orientam a análise, o planejamento e a implementação da segurança para um determinado grupo de informações que se deseja proteger. Outros atributos importantes são a irretratabilidade, a autenticidade e a conformidade. Com a evolução do comércio eletrônico e da sociedade da informação, a privacidade é também uma grande preocupação.\r\n\r\nPortanto os atributos básicos da segurança da informação, segundo os padrões internacionais (ISO/IEC 17799:2005) são os seguintes:\r\n\r\nConfidencialidade - propriedade que limita o acesso a informação tão somente às entidades legítimas, ou seja, àquelas autorizadas pelo proprietário da informação.\r\nIntegridade - propriedade que garante que a informação manipulada mantenha todas as características originais estabelecidas pelo proprietário da informação, incluindo controle de mudanças e garantia do seu ciclo de vida (Corrente, intermediária e permanente). O ciclo de vida da informação órgânica - criada em ambiente organizacional - segue as três fases do ciclo de vida dos documentos de arquivos; conforme preceitua os canadenses da Universidade do Quebec (Canadá): Carol Couture e Jean Yves Rousseau, no livro Os Fundamentos da Disciplina Arquivística.\r\nDisponibilidade - propriedade que garante que a informação esteja sempre disponível para o uso legítimo, ou seja, por aqueles usuários autorizados pelo proprietário da informação.\r\nAutenticidade - propriedade que garante que a informação é proveniente da fonte anunciada e que não foi alvo de mutações ao longo de um processo.\r\nIrretratabilidade ou Não Repúdio - propriedade que garante a impossibilidade de negar a autoria em relação a uma transação anteriormente feita\r\nConformidade: propriedade que garante que o sistema deve seguir as leis e regulamentos associados a este tipo de processo.\r\nPara a montagem desta política, deve-se levar em conta:\r\n\r\nRiscos associados à falta de segurança;\r\nBenefícios;\r\nCustos de implementação dos mecanismos.\r\n\r\n\r\nFonte: https://pt.wikipedia.org/wiki/Seguran%C3%A7a_da_informa%C3%A7%C3%A3o', 'Fulano'),
(2, 'Investimento ou Gasto em Segurança da Informação?', 'Muito se fala sobre segurança da informação em todo o mundo, mas até que ponto estamos realmente preocupados (todos) e interessados em fazer bons investimentos e não apenas gastos?\r\n\r\n \r\n\r\nParece uma pergunta simples, mas não é, afinal a maioria das empresas acredita que investe em segurança da informação. Nos últimos meses muito se falou sobre a lei intitulada Carolina Dieckman, sobre a espionagem dos EUA e outros assuntos que não ganharam tanta relevância, e a impressão é de sempre estivemos preocupados e de que agora nos preocupamos muito mais com isso. Estamos vivendo uma situação muito parecida com a que tivemos na virada do ano de 1999 para 2000, e no pós-ataques de 11 de setembro nos EUA, onde a bola da vez foram os planos de continuidade de negócio.\r\n\r\n \r\n\r\nAcompanho de perto muitas discussões e projetos de segurança, e percebo que continuamos caminhando para “gastar” em segurança da informação e não “investir” em segurança da informação. Se fosse para listar os principais motivadores para isso seriam:\r\n\r\n \r\n\r\n1)      A falta de conscientização das empresas quanto a segurança ser um investimento e um fator estratégico, e não um gasto em TI;\r\n\r\n2)      A falta de executivos que realmente conhecem  cenários de riscos, segurança física e tecnológica, infra-estrutura, planos de continuidade de negócios, fraudes e legislação;\r\n\r\n3)      A falta de conscientização do mercado de que segurança não é comprar hardware ou software, e se preocupar apenas com patches e regras de firewall, ou querer que segurança fique dentro da área de TI;\r\n\r\n4)      Entender que para investir é preciso conhecer o cenário e tudo que o cerca, e que ocultar os riscos a que a empresa está exposta mesmo depois de já ter feito um investimento não é desmerecimento ao que já foi realizado;\r\n\r\n5)      Entender que o ser humano é o elo mais fraco e é a camada de segurança mais vulnerável. Por isto,  é necessário o investimento em treinamentos de conscientização, constantemente, além de soluções “realmente” necessárias e mais efetivas.\r\n\r\n\r\nFonte: https://www.trustsign.com.br/blog/investimento-ou-gasto-em-seguranca-da-informacao/index.html', 'Beltrano'),
(3, 'Engenharia social (segurança)', 'A engenharia social é aplicada em diversos setores da segurança da informação, e independentemente de sistemas computacionais, software e/ou plataforma utilizada, o elemento mais vulnerável de qualquer sistema de segurança da informação é o ser humano, o qual possui traços comportamentais e psicológicos que o torna suscetível a ataques de engenharia social. Dentre essas características, pode-se destacar:\r\n\r\nA engenharia social não é exclusivamente utilizada em informática. Ela também é uma ferramenta que permite explorar falhas humanas em organizações físicas ou jurídicas as quais operadores do sistema de segurança da informação possuem poder de decisão parcial ou total sobre o sistema, seja ele físico ou virtual. Porém, deve-se considerar que informações tais como pessoais, não documentadas, conhecimentos, saber, não são informações físicas ou virtuais, elas fazem parte de um sistema em que possuem características comportamentais e psicológicas nas quais a engenharia social passa a ser auxiliada por outras técnicas como: leitura fria, linguagem corporal, leitura quente. Esses termos são usados no auxílio da engenharia social para obter informações que não são físicas ou virtuais, mas sim comportamentais e psicológicas.\r\n\r\n\r\nFonte: https://pt.wikipedia.org/wiki/Engenharia_social_(seguran%C3%A7a)', 'Ciclano');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Marcão Dono do Site', 'admin', 'senha_dificil'),
(2, 'Joana Editora de Notícias', 'joana', '112233'),
(3, 'Augusto sobrinho do chefe', 'augusto', '665544332211'),
(4, 'Usuário seguro', 'heavy_user', '78790d095756609dea8daee903d2e4e2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
  
  
  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';
ALTER USER 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'test';
