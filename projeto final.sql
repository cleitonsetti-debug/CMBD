-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.4.3 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para producao
CREATE DATABASE IF NOT EXISTS `producao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `producao`;

-- Copiando estrutura para tabela producao.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf_cnpj` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.clientes: ~100 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `cpf_cnpj`, `rua`, `telefone`, `numero`, `bairro`, `cep`, `referencia`) VALUES
	(1, 'Ana Silva', '12345678901', 'Rua das Flores', '11987654321', '102', 'Centro', '01001000', 'Próximo ao Banco do Brasil'),
	(2, 'Carlos Eduardo Santos', '98765432100', 'Avenida Paulista', '11976543210', '1500', 'Bela Vista', '01310100', 'Frente ao MASP'),
	(3, 'Mariana Oliveira', '45678912345', 'Rua dos Pinheiros', '11965432109', '45', 'Pinheiros', '05422000', 'Ao lado da farmácia'),
	(4, 'Empresa Alfa Ltda', '12345678000195', 'Avenida Faria Lima', '1130004000', '2000', 'Itaim Bibi', '04538132', 'Torre B, Sala 501'),
	(5, 'Lucas Pereira', '32165498700', 'Rua Bahia', '21988887777', '88', 'Higienópolis', '01244000', 'Perto da praça'),
	(6, 'Beatriz Costa', '65498732111', 'Rua Amazonas', '31999998888', '312', 'Savassi', '30140000', 'Esquina com a Rua Sergipe'),
	(7, 'Comércio de Alimentos Beta ME', '98765432000188', 'Rua das Palmeiras', '4133334444', '50', 'Batel', '80420000', 'Em frente ao mercado'),
	(8, 'Fernanda Lima', '78912345622', 'Rua XV de Novembro', '41987651234', '120', 'Centro', '80020000', 'Galeria Central'),
	(9, 'Roberto Souza', '15975346833', 'Avenida Brasil', '21971234567', '4300', 'Copacabana', '22041001', 'Posto 4'),
	(10, 'Juliana Mendes', '85296374144', 'Rua das Acácias', '19981112223', '12', 'Jardim das Flores', '13080000', 'Atrás da igreja'),
	(11, 'Gabriel Alves', '95175385255', 'Rua Castro Alves', '51998765432', '77', 'Moinhos de Vento', '90570080', 'Próximo ao parque'),
	(12, 'Patricia Rocha', '35715924866', 'Avenida Afonso Pena', '31984445555', '2500', 'Funcionários', '30130007', 'Em frente ao shopping'),
	(13, 'Tech Soluções S/A', '55566677000122', 'Rua Berrini', '1131234567', '500', 'Brooklin', '04571010', 'Andar 12'),
	(14, 'Rodrigo Martins', '74185296377', 'Rua Sergipe', '11982223334', '204', 'Consolação', '01303001', 'Bloco A'),
	(15, 'Camila Rodrigues', '96325874188', 'Rua Sete de Setembro', '21993334445', '89', 'Centro', '20050005', 'Perto do metrô'),
	(16, 'Thiago Barbosa', '14725836999', 'Rua Mato Grosso', '61984443322', '1010', 'Asa Sul', '70300000', 'Bloco B'),
	(17, 'Vanessa Fernandes', '25814736900', 'Avenida Rebouças', '11975556667', '300', 'Jardins', '05402000', 'Frente à estação'),
	(18, 'Diego Carvalho', '36925814711', 'Rua das Laranjeiras', '21996667778', '450', 'Laranjeiras', '22240003', 'Próximo à praça'),
	(19, 'Larissa Dias', '12398745633', 'Rua Uruguay', '51981119999', '67', 'Passo d\'Areia', '91350000', 'Ao lado da padaria'),
	(20, 'Marcos Vinicius', '45612378944', 'Rua Alagoas', '31992228888', '512', 'Savassi', '30130010', 'Atrás do colégio'),
	(21, 'Letícia Castro', '78945612355', 'Avenida Ipiranga', '11983337777', '200', 'República', '01039000', 'Próximo à galeria'),
	(22, 'Gustavo Henrique', '32198765466', 'Rua Voluntários da Pátria', '21994446666', '1200', 'Botafogo', '22270001', 'Esquina com a São Clemente'),
	(23, 'Amanda Farias', '65432198777', 'Rua da Aurora', '81985554444', '305', 'Boa Vista', '50050000', 'Em frente ao rio'),
	(24, 'Bruno Cardoso', '98712365488', 'Avenida Caxangá', '81996663333', '1500', 'Iputinga', '50670000', 'Próximo ao hospital'),
	(25, 'Carolina Ribeiro', '15935725899', 'Rua das Marrecas', '21997772222', '44', 'Lapa', '20031010', 'Perto do circo voador'),
	(26, 'Daniel Nogueira', '75315985200', 'Rua Padre Chagas', '51998881111', '210', 'Moinhos de Vento', '90570080', 'Ao lado do café'),
	(27, 'Erica Martins', '85214796311', 'Rua Oscar Freire', '11999990000', '800', 'Cerqueira César', '01426000', 'Loja 2'),
	(28, 'Felipe Xavier', '96385214722', 'Avenida Boa Viagem', '81981234567', '3200', 'Boa Viagem', '51020001', 'Frente para o mar'),
	(29, 'Gisele Batista', '14796385233', 'Rua Visconde de Pirajá', '21982345678', '550', 'Ipanema', '22410003', 'Galeria Forum'),
	(30, 'Heitor Moreira', '25896314744', 'Rua das Flores', '41983456789', '99', 'Centro', '80010000', 'Perto da catedral'),
	(31, 'Isabela Freitas', '36914785255', 'Avenida Getúlio Vargas', '31984567890', '1400', 'Funcionários', '30112021', 'Esquina com a Contorno'),
	(32, 'João Pedro', '45632198766', 'Rua Marechal Deodoro', '41985678901', '600', 'Centro', '80010010', 'Próximo ao correio'),
	(33, 'Karina Lopes', '78965432177', 'Rua Silva Jardim', '47986789012', '123', 'Centro', '88301040', 'Atrás da prefeitura'),
	(34, 'Leonardo Guimarães', '32145698788', 'Avenida Beira Mar', '48987890123', '2000', 'Agronômica', '88025000', 'Torre Norte'),
	(35, 'Monique Araujo', '65412389799', 'Rua das Rendeiras', '48988901234', '450', 'Lagoa da Conceição', '88062000', 'Frente à lagoa'),
	(36, 'Nathan Soares', '98745632100', 'Rua Lauro Linhares', '48989012345', '1100', 'Trindade', '88036002', 'Perto da UFSC'),
	(37, 'Olivia Monteiro', '12365498711', 'Rua Bocaiúva', '48990123456', '670', 'Centro', '88015530', 'Shopping Beiramar'),
	(38, 'Paulo Sergio', '45698732122', 'Rua Felipe Schmidt', '48991234567', '300', 'Centro', '88010001', 'Calçadão'),
	(39, 'Rafaela Bizzo', '78932165433', 'Rua Vidal Ramos', '48992345678', '110', 'Centro', '88010060', 'Em frente à loja de roupas'),
	(40, 'Samuel Correia', '32178945644', 'Avenida Osvaldo Aranha', '51993456789', '880', 'Bom Fim', '90035190', 'Próximo à redenção'),
	(41, 'Tatiana Neves', '65489712355', 'Rua dos Andradas', '51994567890', '1500', 'Centro Histórico', '90020011', 'Perto do museu'),
	(42, 'Ubiratan Luz', '98732145666', 'Rua Padre Chagas', '51995678901', '330', 'Moinhos de Vento', '90570080', 'Andar 3'),
	(43, 'Valeria Ramos', '15987654377', 'Avenida Carlos Gomes', '51996789012', '1100', 'Auxiliadora', '90480003', 'Edifício Empresarial'),
	(44, 'Wagner Duarte', '75395146888', 'Rua Protasio Alves', '51997890123', '2300', 'Petrópolis', '90410004', 'Ao lado do posto'),
	(45, 'Xavier Filho', '85274196399', 'Rua da Praia', '51998901234', '400', 'Centro', '90010000', 'Galeria'),
	(46, 'Yara Medeiros', '96374185200', 'Avenida Epitácio Pessoa', '83999012345', '1200', 'Tambaú', '58039000', 'Frente para a praia'),
	(47, 'Zé Maria Distribuidora', '44433322000111', 'Rua Maciel Pinheiro', '8332221111', '88', 'Varadouro', '58010000', 'Galpão 2'),
	(48, 'Arthur Aguiar', '14736925811', 'Rua das Três Marias', '31981112233', '45', 'Jardim Amazônia', '30000000', 'Casa verde'),
	(49, 'Bianca Castilho', '25836914722', 'Rua Principal', '71982223344', '10', 'Pelourinho', '40026280', 'Perto do elevado'),
	(50, 'Caio Cesar', '36914725833', 'Avenida Sete de Setembro', '71983334455', '2050', 'Vitória', '40080002', 'Edifício Solar'),
	(51, 'Clara Mendes', '11223344556', 'Avenida Agamenon Magalhães', '81991112233', '1401', 'Derby', '52010040', 'Empresarial Charles Darwin'),
	(52, 'Sandro Peixoto', '22334455667', 'Rua Domingos Ferreira', '81992223344', '850', 'Boa Viagem', '51011040', 'Esquina com a Padre Carapuceiro'),
	(53, 'Helena Nogueira', '33445566778', 'Avenida Beira Mar', '85993334455', '3100', 'Meireles', '60165121', 'Frente à Feirinha da Beira Mar'),
	(54, 'Logística Expressa Eireli', '11222333000144', 'Rua Francisco Glicério', '1932345678', '1200', 'Guanabara', '13023001', 'Galpão de Cargas 4'),
	(55, 'Renato Vignoli', '44556677889', 'Avenida Afonso Pena', '67994445566', '4050', 'Jardim dos Estados', '79002075', 'Próximo ao Parque dos Poderes'),
	(56, 'Tatiane Guimaraes', '55667788990', 'Rua das Mangueiras', '91995556677', '34', 'Umarizal', '66055210', 'Atrás do Supermercado Líder'),
	(57, 'Otávio Mesquita', '66778899001', 'Avenida Marechal Castelo Branco', '86996667788', '900', 'Ilhotas', '64014058', 'Próximo à Ponte Estaiada'),
	(58, 'Mercado e Açougue São Jorge', '22333444000155', 'Rua da Paz', '9236112233', '55', 'Centro', '69010000', 'Perto do Porto de Manaus'),
	(59, 'Beatriz Portela', '77889900112', 'Avenida Djalma Batista', '92997778899', '1661', 'Chapada', '69050010', 'Millennium Shopping'),
	(60, 'Igor Carmona', '88990011223', 'Rua da Consolação', '11988881122', '2423', 'Cerqueira César', '01416001', 'Metrô Paulista'),
	(61, 'Consultoria HJB Ltda', '33444555000166', 'Rua Almirante Barroso', '2125334455', '63', 'Centro', '20031003', 'Andar 18, Sala 1802'),
	(62, 'Sonia Abrantes', '99001122334', 'Rua Marechal Deodoro', '41999992233', '870', 'Alto da XV', '80060010', 'Ao lado do Hospital XV'),
	(63, 'Fabio Assunção', '00112233445', 'Avenida Fernando Corrêa', '65991238877', '2100', 'Coxipó', '78060000', 'Frente à UFMT'),
	(64, 'Gisele Bündchen', '11335577991', 'Rua Padre Chagas', '51988776655', '12', 'Moinhos de Vento', '90570080', 'Boulevard Vento Norte'),
	(65, 'Sapataria e Sapataria Silva', '44555666000177', 'Rua 13 de Maio', '1934221100', '405', 'Centro', '13010051', 'Em frente à Praça Catedral'),
	(66, 'Aline Riscado', '22446688002', 'Avenida Epitácio Pessoa', '83981110000', '2500', 'Tambaú', '58039000', 'Próximo ao Hotel Tambaú'),
	(67, 'Marcio Garcia', '33557799113', 'Avenida Olegário Maciel', '21976541122', '510', 'Barra da Tijuca', '22621200', 'Posto 2'),
	(68, 'Priscila Fantin', '44668800224', 'Rua da Bahia', '31987652233', '1800', 'Lourdes', '30160011', 'Esquina com a Rua Cláudio Manoel'),
	(69, 'Restaurante Tempero Baiano', '55666777000188', 'Largo do Cruzeiro de São Francisco', '7133219988', '7', 'Pelourinho', '40020280', 'Ao lado da Igreja de São Francisco'),
	(70, 'Diogo Nogueira', '55779900335', 'Rua Senador Dantas', '21998871122', '117', 'Centro', '20031204', 'Ao lado do Teatro Riachuelo'),
	(71, 'Camila Pitanga', '66880011446', 'Avenida do Contorno', '31991122334', '6280', 'Savassi', '30110008', 'Perto do Patio Savassi'),
	(72, 'Murilo Benício', '77990022557', 'Rua Oscar Freire', '11982233445', '1012', 'Jardim Paulista', '01426001', 'Em frente à Flagship Havaianas'),
	(73, 'Debora Falabella', '88001133668', 'Rua da Aurora', '81993344556', '523', 'Santo Amaro', '50050000', 'Próximo ao Cinema São Luiz'),
	(74, 'Eduardo Moscovis', '99112244779', 'Rua Visconde de Pirajá', '21994455667', '303', 'Ipanema', '22410001', 'Galeria de Arte'),
	(75, 'Farmácia Vida Natural', '66777888000199', 'Avenida Ceará', '6832245566', '120', 'Centro', '69900001', 'Em frente ao Terminal Urbano'),
	(76, 'Thaila Ayala', '00223355880', 'Rua Bento Gonçalves', '54995566778', '1450', 'Centro', '95020010', 'Perto da Praça Dante Alighieri'),
	(77, 'Cauã Reymond', '11445566991', 'Avenida Atlântica', '47996677889', '2200', 'Centro', '88330011', 'Frente para a Praia Central'),
	(78, 'Giovanna Antonelli', '22556677002', 'Rua das Marrecas', '21997788990', '39', 'Lapa', '20031120', 'Perto da Passeio Público'),
	(79, 'Lázaro Ramos', '33667788113', 'Avenida Sete de Setembro', '71998899001', '1420', 'Corredor da Vitória', '40080001', 'Em frente ao Museu de Arte'),
	(80, 'Tais Araújo', '44778899224', 'Rua das Laranjeiras', '21999900112', '210', 'Laranjeiras', '22240001', 'Ao lado da Estação do Bonde'),
	(81, 'Auto Peças do Norte', '77888999000100', 'Avenida Torquato Tapajós', '9236511122', '4500', 'Flores', '69058830', 'Galpão do KM 5'),
	(82, 'Reynaldo Gianecchini', '55889900335', 'Avenida Higienópolis', '11981122334', '800', 'Higienópolis', '01238000', 'Shopping Pátio Higienópolis'),
	(83, 'Grazi Massafera', '66990011446', 'Rua XV de Novembro', '43982233445', '512', 'Centro', '86010060', 'Calçadão de Londrina'),
	(84, 'Thiago Lacerda', '77001122557', 'Rua Silva Jardim', '47983344556', '890', 'Centro', '88301040', 'Próximo ao Porto de Itajaí'),
	(85, 'Alinne Moraes', '88112233668', 'Avenida Beira Mar Norte', '48984455667', '3000', 'Agronômica', '88025000', 'Frente para a ciclovia'),
	(86, 'Rodrigo Santoro', '99223344779', 'Rua das Palmeiras', '24985566778', '120', 'Centro', '25620030', 'Próximo ao Museu Imperial'),
	(87, 'Clínica Médica Santa Maria', '88999000000111', 'Avenida do Cordeiro', '8134215544', '200', 'Cordeiro', '50721130', 'Esquina com a Caxangá'),
	(88, 'Mariana Ximenes', '00334455880', 'Rua Voluntários da Pátria', '21986677889', '340', 'Botafogo', '22270001', 'Atrás do Botafogo Praia Shopping'),
	(89, 'Paolla Oliveira', '11445566992', 'Rua Oscar Freire', '11987788990', '410', 'Jardim Paulista', '01426001', 'Próximo à Alameda Ministro Rocha Azevedo'),
	(90, 'Isis Valverde', '22556677003', 'Avenida Das Américas', '21988899001', '5000', 'Barra da Tijuca', '22640102', 'New York City Center'),
	(91, 'Marcos Palmeira', '33667788114', 'Rua Visconde de Mauá', '85989900112', '800', 'Aldeota', '60125160', 'Esquina com a Avenida Desembargador Moreira'),
	(92, 'Juliana Paes', '44778899225', 'Rua das Flores', '21990011223', '45', 'Santa Teresa', '20241020', 'Perto do Largo do Guimarães'),
	(93, 'Padaria Pão de Mel', '99000111000122', 'Rua Rui Barbosa', '7532214455', '88', 'Centro', '44001140', 'Frente à Praça da Matriz'),
	(94, 'Fernanda Montenegro', '55889900336', 'Avenida Atlântica', '21991122334', '1500', 'Copacabana', '22021000', 'Posto 3'),
	(95, 'Lima Duarte', '66990011447', 'Rua da Matriz', '15992233445', '12', 'Centro', '18270000', 'Atrás da Igreja Matriz'),
	(96, 'Glória Pires', '77001122558', 'Rua Henrique Schaumann', '11993344556', '770', 'Pinheiros', '05413011', 'Próximo à Praça Benedito Calixto'),
	(97, 'Tony Ramos', '88112233669', 'Avenida Pacaembu', '11994455667', '1200', 'Pacaembu', '01234000', 'Próximo ao Estádio do Pacaembu'),
	(98, 'Lilia Cabral', '99223344770', 'Rua Bela Cintra', '11995566778', '1900', 'Consolação', '01415002', 'Entre a Santos e a Paulista'),
	(99, 'Oficina Mecânica Precision', '00111222000133', 'Avenida Paralela', '7133002211', '3500', 'Imbuí', '41720000', 'Ao lado do Posto Shell'),
	(100, 'Mateus Solano', '00334455881', 'Rua Haddock Lobo', '11996677889', '1307', 'Jardim Paulista', '01414003', 'Edifício Comercial Prime'),
	(101, 'Cleiton setti', '19292383', 'rua A', '49999999999', '01', 'centro', 'u432u4234', '');

-- Copiando estrutura para tabela producao.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `id_produtos` int DEFAULT NULL,
  `quantidade` float NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data_comprar` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.compras: ~100 rows (aproximadamente)
INSERT INTO `compras` (`id`, `id_fornecedor`, `id_produtos`, `quantidade`, `codigo`, `data_comprar`) VALUES
	(1, 67, 36, 10, 'CMP-2001', '2026-01-12 00:00:00'),
	(2, 27, 47, 30, 'CMP-2002', '2026-01-14 00:00:00'),
	(3, 97, 36, 200, 'CMP-2003', '2026-01-16 00:00:00'),
	(4, 78, 39, 30, 'CMP-2004', '2026-01-18 00:00:00'),
	(5, 62, 91, 10, 'CMP-2005', '2026-01-21 00:00:00'),
	(6, 97, 40, 200, 'CMP-2006', '2026-01-23 00:00:00'),
	(7, 50, 48, 30, 'CMP-2007', '2026-01-25 00:00:00'),
	(8, 35, 55, 30, 'CMP-2008', '2026-01-27 00:00:00'),
	(9, 21, 23, 5, 'CMP-2009', '2026-01-29 00:00:00'),
	(10, 15, 23, 30, 'CMP-2010', '2026-02-01 00:00:00'),
	(11, 15, 35, 20, 'CMP-2011', '2026-02-03 00:00:00'),
	(12, 8, 91, 10, 'CMP-2012', '2026-02-05 00:00:00'),
	(13, 95, 100, 15, 'CMP-2013', '2026-02-07 00:00:00'),
	(14, 54, 36, 150, 'CMP-2014', '2026-02-09 00:00:00'),
	(15, 90, 15, 5, 'CMP-2015', '2026-02-12 00:00:00'),
	(16, 82, 73, 30, 'CMP-2016', '2026-02-14 00:00:00'),
	(17, 7, 66, 25, 'CMP-2017', '2026-02-16 00:00:00'),
	(18, 63, 40, 20, 'CMP-2018', '2026-02-18 00:00:00'),
	(19, 18, 92, 20, 'CMP-2019', '2026-02-20 00:00:00'),
	(20, 84, 76, 20, 'CMP-2020', '2026-02-23 00:00:00'),
	(21, 84, 1, 25, 'CMP-2021', '2026-02-25 00:00:00'),
	(22, 18, 41, 150, 'CMP-2022', '2026-02-27 00:00:00'),
	(23, 71, 31, 15, 'CMP-2023', '2026-03-01 00:00:00'),
	(24, 84, 17, 50, 'CMP-2024', '2026-03-03 00:00:00'),
	(25, 56, 18, 50, 'CMP-2025', '2026-03-06 00:00:00'),
	(26, 51, 9, 200, 'CMP-2026', '2026-03-08 00:00:00'),
	(27, 10, 68, 150, 'CMP-2027', '2026-03-10 00:00:00'),
	(28, 14, 28, 15, 'CMP-2028', '2026-03-12 00:00:00'),
	(29, 53, 22, 20, 'CMP-2029', '2026-03-14 00:00:00'),
	(30, 42, 55, 10, 'CMP-2030', '2026-03-17 00:00:00'),
	(31, 5, 92, 30, 'CMP-2031', '2026-03-19 00:00:00'),
	(32, 36, 47, 100, 'CMP-2032', '2026-03-21 00:00:00'),
	(33, 58, 54, 100, 'CMP-2033', '2026-03-23 00:00:00'),
	(34, 74, 18, 20, 'CMP-2034', '2026-03-25 00:00:00'),
	(35, 26, 18, 20, 'CMP-2035', '2026-03-28 00:00:00'),
	(36, 53, 14, 10, 'CMP-2036', '2026-03-30 00:00:00'),
	(37, 77, 79, 20, 'CMP-2037', '2026-04-01 00:00:00'),
	(38, 13, 96, 25, 'CMP-2038', '2026-04-03 00:00:00'),
	(39, 93, 11, 200, 'CMP-2039', '2026-04-05 00:00:00'),
	(40, 14, 92, 50, 'CMP-2040', '2026-04-08 00:00:00'),
	(41, 53, 99, 15, 'CMP-2041', '2026-04-10 00:00:00'),
	(42, 6, 82, 40, 'CMP-2042', '2026-04-12 00:00:00'),
	(43, 13, 42, 40, 'CMP-2043', '2026-04-14 00:00:00'),
	(44, 9, 72, 30, 'CMP-2044', '2026-04-16 00:00:00'),
	(45, 4, 58, 150, 'CMP-2045', '2026-04-19 00:00:00'),
	(46, 3, 80, 10, 'CMP-2046', '2026-04-21 00:00:00'),
	(47, 74, 31, 25, 'CMP-2047', '2026-04-23 00:00:00'),
	(48, 44, 33, 20, 'CMP-2048', '2026-04-25 00:00:00'),
	(49, 88, 11, 50, 'CMP-2049', '2026-04-27 00:00:00'),
	(50, 4, 57, 5, 'CMP-2050', '2026-04-30 00:00:00'),
	(51, 20, 58, 200, 'CMP-2051', '2026-05-02 00:00:00'),
	(52, 57, 45, 15, 'CMP-2052', '2026-05-04 00:00:00'),
	(53, 89, 55, 5, 'CMP-2053', '2026-05-06 00:00:00'),
	(54, 71, 54, 5, 'CMP-2054', '2026-05-08 00:00:00'),
	(55, 32, 52, 50, 'CMP-2055', '2026-05-11 00:00:00'),
	(56, 73, 65, 25, 'CMP-2056', '2026-05-13 00:00:00'),
	(57, 73, 84, 10, 'CMP-2057', '2026-05-15 00:00:00'),
	(58, 51, 95, 20, 'CMP-2058', '2026-05-17 00:00:00'),
	(59, 36, 55, 150, 'CMP-2059', '2026-05-19 00:00:00'),
	(60, 33, 84, 200, 'CMP-2060', '2026-05-22 00:00:00'),
	(61, 96, 54, 25, 'CMP-2061', '2026-05-24 00:00:00'),
	(62, 1, 62, 15, 'CMP-2062', '2026-05-26 00:00:00'),
	(63, 35, 42, 40, 'CMP-2063', '2026-05-28 00:00:00'),
	(64, 30, 35, 15, 'CMP-2064', '2026-05-30 00:00:00'),
	(65, 12, 17, 200, 'CMP-2065', '2026-06-02 00:00:00'),
	(66, 91, 95, 25, 'CMP-2066', '2026-06-04 00:00:00'),
	(67, 94, 89, 15, 'CMP-2067', '2026-06-06 00:00:00'),
	(68, 41, 13, 5, 'CMP-2068', '2026-06-08 00:00:00'),
	(69, 68, 5, 100, 'CMP-2069', '2026-06-10 00:00:00'),
	(70, 6, 81, 200, 'CMP-2070', '2026-06-13 00:00:00'),
	(71, 42, 15, 15, 'CMP-2071', '2026-06-15 00:00:00'),
	(72, 12, 78, 40, 'CMP-2072', '2026-06-17 00:00:00'),
	(73, 28, 53, 20, 'CMP-2073', '2026-06-19 00:00:00'),
	(74, 78, 43, 30, 'CMP-2074', '2026-06-21 00:00:00'),
	(75, 36, 45, 5, 'CMP-2075', '2026-06-24 00:00:00'),
	(76, 91, 26, 50, 'CMP-2076', '2026-06-26 00:00:00'),
	(77, 19, 88, 15, 'CMP-2077', '2026-06-28 00:00:00'),
	(78, 66, 75, 25, 'CMP-2078', '2026-06-30 00:00:00'),
	(79, 90, 90, 50, 'CMP-2079', '2026-07-02 00:00:00'),
	(80, 34, 98, 10, 'CMP-2080', '2026-07-05 00:00:00'),
	(81, 3, 69, 30, 'CMP-2081', '2026-07-07 00:00:00'),
	(82, 43, 86, 150, 'CMP-2082', '2026-07-09 00:00:00'),
	(83, 43, 60, 10, 'CMP-2083', '2026-07-11 00:00:00'),
	(84, 10, 73, 200, 'CMP-2084', '2026-07-13 00:00:00'),
	(85, 32, 94, 25, 'CMP-2085', '2026-07-16 00:00:00'),
	(86, 48, 26, 25, 'CMP-2086', '2026-07-18 00:00:00'),
	(87, 18, 79, 30, 'CMP-2087', '2026-07-20 00:00:00'),
	(88, 72, 15, 50, 'CMP-2088', '2026-07-22 00:00:00'),
	(89, 95, 32, 20, 'CMP-2089', '2026-07-24 00:00:00'),
	(90, 52, 67, 50, 'CMP-2090', '2026-07-27 00:00:00'),
	(91, 99, 94, 15, 'CMP-2091', '2026-07-29 00:00:00'),
	(92, 53, 95, 20, 'CMP-2092', '2026-07-31 00:00:00'),
	(93, 92, 78, 50, 'CMP-2093', '2026-08-02 00:00:00'),
	(94, 99, 18, 100, 'CMP-2094', '2026-08-04 00:00:00'),
	(95, 48, 59, 100, 'CMP-2095', '2026-08-07 00:00:00'),
	(96, 41, 38, 100, 'CMP-2096', '2026-08-09 00:00:00'),
	(97, 64, 46, 15, 'CMP-2097', '2026-08-11 00:00:00'),
	(98, 18, 50, 100, 'CMP-2098', '2026-08-13 00:00:00'),
	(99, 32, 33, 15, 'CMP-2099', '2026-08-15 00:00:00'),
	(100, 77, 99, 30, 'CMP-2100', '2026-08-18 00:00:00'),
	(101, 10, 1, 5, 'CMP-01', '2026-09-10 00:00:00'),
	(108, 4, 14, 40, 'compra 01/10', '2026-10-01 15:10:55'),
	(109, 78, 39, 50, 'PED-200', '2026-10-08 14:46:53');

-- Copiando estrutura para tabela producao.fornecedores
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(18) NOT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `telefone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.fornecedores: ~100 rows (aproximadamente)
INSERT INTO `fornecedores` (`id`, `nome`, `cpf_cnpj`, `rua`, `numero`, `bairro`, `cep`, `referencia`, `telefone`) VALUES
	(1, 'Atacadista Sul Distribuidora Ltda', '12345678000101', 'Avenida das Indústrias', '1000', 'Distrito Industrial', '88010000', 'Galpão 3', '4832221100'),
	(2, 'Alimentos e Cereais Primavera ME', '23456789000102', 'Rua das Palmeiras', '250', 'Centro', '01001000', 'Próximo ao Mercado Municipal', '1131002200'),
	(3, 'Laticínios Vale do Leite S/A', '34567890000103', 'Rodovia BR-101', '4500', 'Zona Rural', '88300000', 'KM 120', '4733445500'),
	(4, 'Embalagens Plásticas Flexibox', '45678901000104', 'Rua Berrini', '150', 'Brooklin', '04571010', 'Torre Sul, Térreo', '1130405000'),
	(5, 'Bebidas e Cia Distribuidora', '56789012000105', 'Avenida Brasil', '3200', 'Bonsucesso', '21040000', 'Perto da Passarela 9', '2125607000'),
	(6, 'Hortifruti Organicos Brasil Ltda', '67890123000106', 'Rua das Flores', '88', 'Jardim Amália', '13080000', 'Em frente à cooperativa', '1932514400'),
	(7, 'Distribuidora de Carnes Boi Gordo', '78901234000107', 'Avenida Farrapos', '1200', 'Navegantes', '90220000', 'Próximo à estação de metrô', '5133221122'),
	(8, 'Importadora e Exportadora Global', '89012345000108', 'Rua Visconde de Inhaúma', '50', 'Centro', '20091000', 'Andar 8', '2122334455'),
	(9, 'Produtos de Limpeza CleanTech', '90123456000109', 'Avenida do Cordeiro', '600', 'Cordeiro', '50721130', 'Atrás do posto Shell', '8134556677'),
	(10, 'Panificação e Insumos Trigo Ouro', '01234567000110', 'Rua Sete de Setembro', '430', 'Centro', '80010010', 'Galpão B', '4132321100'),
	(11, 'Comércio de Grãos e Ervas Ltda', '12345678000111', 'Avenida Afonso Pena', '2100', 'Funcionários', '30130007', 'Esquina com a Rua Sergipe', '3132758800'),
	(12, 'Doces e Confeitos Delícia S/A', '23456789000112', 'Rua XV de Novembro', '90', 'Centro', '89201000', 'Em frente à praça central', '4734332211'),
	(13, 'Equipamentos Comerciais MaqSul', '34567890000113', 'Avenida Ipiranga', '3500', 'Partenon', '90610000', 'Perto da PUCRS', '5133334455'),
	(14, 'Indústria de Bebidas Serra Azul', '45678901000114', 'Rua XV de Novembro', '1200', 'Centro', '95700000', 'Vale dos Vinhedos', '5434512233'),
	(15, 'Frios e Embutidos Defumados ME', '56789012000115', 'Rua Amazonas', '310', 'Garcia', '89020000', 'Próximo à ponte', '4733221100'),
	(16, 'Distribuidora de Água Mineral Purita', '67890123000116', 'Avenida Getúlio Vargas', '1800', 'Menino Deus', '90150000', 'Esquina com a Ipiranga', '5132114455'),
	(17, 'Graos & Cia Atacado', '78901234000117', 'Avenida Caxangá', '2200', 'Iputinga', '50670000', 'Próximo ao viaduto', '8132710000'),
	(18, 'Representações Comerciais Silva', '89012345000118', 'Rua Uruguai', '300', 'Centro', '01018000', 'Sala 402', '1131056677'),
	(19, 'Papelaria e Suprimentos Atacarejo', '90123456000119', 'Avenida Rebouças', '1100', 'Pinheiros', '05401000', 'Próximo ao metrô Oscar Freire', '1130612233'),
	(20, 'Descartáveis e Higiene Total', '01234567000120', 'Rua Voluntários da Pátria', '2500', 'Santana', '02011000', 'Ao lado do terminal', '1129718899'),
	(21, 'Cooperativa Agrícola Campo Verde', '12345678000121', 'Rodovia BR-277', '8000', 'Distrito Industrial', '85850000', 'KM 14', '4535219900'),
	(22, 'Super Atacado das Carnes S/A', '23456789000122', 'Avenida Paralela', '5000', 'Imbuí', '41720000', 'Ao lado da concessionária', '7133604000'),
	(23, 'Insumos Químicos Quimibras', '34567890000123', 'Avenida dos Autonomistas', '4000', 'Km 18', '06194000', 'Galpão 12', '1136815500'),
	(24, 'Logística e Alimentos Express', '45678901000124', 'Rua Lauro Linhares', '850', 'Trindade', '88036002', 'Perto da UFSC', '4833345566'),
	(25, 'Frigorífico e Distribuidora Boi Branco', '56789012000125', 'Avenida Fernando Corrêa', '4100', 'Coxipó', '78060000', 'Em frente ao trevo', '6536162200'),
	(26, 'Importadora de Vinhos Baco', '67890123000126', 'Rua Oscar Freire', '500', 'Jardim Paulista', '01426001', 'Loja 3', '1130823344'),
	(27, 'Especialidades Gourmet Importações', '78901234000127', 'Rua Padre Chagas', '180', 'Moinhos de Vento', '90570080', 'Boulevard Moinhos', '5133467788'),
	(28, 'Central de Peixes e Frutos do Mar', '89012345000128', 'Avenida Beira Mar', '1500', 'Centro', '88015000', 'Mercado Público, Box 12', '4832241122'),
	(29, 'Distribuidora de Alimentos Santa Luzia', '90123456000129', 'Rua da Bahia', '1400', 'Lourdes', '30160011', 'Próximo ao museu', '3132223344'),
	(30, 'Moinho de Farinha Nacional', '01234567000130', 'Avenida Sertório', '5500', 'Sarandi', '91040001', 'Terminal de Cargas', '5133408899'),
	(31, 'Laticínios Serra de Minas', '12345678000131', 'Avenida Afonso Pena', '900', 'Centro', '35010000', 'Em frente à praça', '3332714455'),
	(32, 'Distribuidora de Frutas Tropical', '23456789000132', 'Avenida Torquato Tapajós', '2800', 'Flores', '69058830', 'Galpão 5', '9236518800'),
	(33, 'Comercial Eletrônica e Conectividade', '34567890000133', 'Rua Santa Ifigênia', '350', 'Santa Ifigênia', '01207000', 'Loja 12', '1133314455'),
	(34, 'Distribuidora de Temperos Condimentar', '45678901000134', 'Rua Rui Barbosa', '450', 'Centro', '44001140', 'Próximo ao mercado', '7532218899'),
	(35, 'Insumos de Panificação Pão Certo', '56789012000135', 'Avenida do Contorno', '4500', 'Funcionários', '30110008', 'Ao lado do posto', '3132812233'),
	(36, 'Atacado de Bebidas Cristal', '67890123000136', 'Avenida Epitácio Pessoa', '1800', 'Tambaú', '58039000', 'Galpão Principal', '8332471122'),
	(37, 'Equipamentos de Refrigeração Gelar', '78901234000137', 'Avenida Marechal Floriano', '3000', 'Parolin', '80220000', 'Perto da fanning', '4133325566'),
	(38, 'Distribuidora de Conservas Alvorada', '89012345000138', 'Rua XV de Novembro', '600', 'Centro', '86010060', 'Próximo ao calçadão', '4333248899'),
	(39, 'Produtores de Café do Cerrado', '90123456000139', 'Avenida Governador Valadares', '120', 'Centro', '38700000', 'Prédio da Cooperativa', '3438215544'),
	(40, 'Nutrição Animal e Rações PetMax', '01234567000140', 'Rodovia Anhanguera', '15000', 'Industrial', '13068000', 'KM 98', '1937412233'),
	(41, 'Distribuidora de Laticínio Bom Gosto', '12345678000141', 'Rua Bocaiúva', '400', 'Centro', '88015530', 'Atrás do shopping', '4832289900'),
	(42, 'Indústria de Vassouras e Escovas Limp', '23456789000142', 'Rua Costa Cabral', '110', 'Bonsucesso', '21041000', 'Galpão 2', '2138651122'),
	(43, 'Comercial de Óleos Vegetais S/A', '34567890000143', 'Avenida Baltazar de Oliveira', '2100', 'Rubem Berta', '91150000', 'Anexo B', '5133664455'),
	(44, 'Importadora Tecidos e Armarinho', '45678901000144', 'Rua 25 de Março', '800', 'Centro', '01021000', 'Andar 3', '1132281100'),
	(45, 'Atacadista de Doces São Pedro', '56789012000145', 'Avenida Agamenon Magalhães', '2000', 'Espinheiro', '52020000', 'Próximo ao viaduto', '8134237788'),
	(46, 'Massas e Biscoitos Dom Padeiro', '67890123000146', 'Rua das Rendeiras', '100', 'Lagoa da Conceição', '88062000', 'Ao lado da ponte', '4832321144'),
	(47, 'Frigorífico Regional do Sul', '78901234000147', 'Rodovia BR-116', '12000', 'Distrito Industrial', '95000000', 'KM 142', '5432185566'),
	(48, 'Especialidades Italianas Pasta Mamma', '89012345000148', 'Rua Bella Cintra', '1200', 'Consolação', '01415002', 'Próximo à Paulista', '1132569988'),
	(49, 'Atacado de Utilidades Domésticas', '90123456000149', 'Rua Marechal Deodoro', '1500', 'Centro', '88010020', 'Galpão Comercial', '4832235544'),
	(50, 'Distribuidora de Sorvetes Frio Bom', '01234567000150', 'Avenida Djalma Batista', '800', 'Nossa Senhora das Graças', '69053000', 'Em frente ao Plaza Shopping', '9232341122'),
	(51, 'Embalagens de Papelão Caixaforte', '12345678000151', 'Avenida Presidente Vargas', '2500', 'Centro', '20210030', 'Bloco B', '2122534455'),
	(52, 'Cooperativa de Mel e Derivados', '23456789000152', 'Rua das Acácias', '45', 'Jardim Amélia', '13090000', 'Próximo ao posto de saúde', '1932561122'),
	(53, 'Distribuidora de Ovos São José', '34567890000153', 'Avenida das Nações Unidas', '12000', 'Jurubatuba', '04795100', 'Acesso pelo portão 3', '1155489900'),
	(54, 'Insumos Agrícolas Terra Fertil', '45678901000154', 'Rodovia Raposo Tavares', '22000', 'Granja Viana', '06709015', 'KM 22', '1147023344'),
	(55, 'Panificadora e Atacado Pão Quente', '56789012000155', 'Rua Henrique Schaumann', '300', 'Pinheiros', '05413010', 'Próximo à Teodoro Sampaio', '1130814455'),
	(56, 'Sucos Naturais Pomar do Sul', '67890123000156', 'Avenida Brasil', '800', 'Centro', '89801000', 'Esquina com a Getúlio Vargas', '4933221144'),
	(57, 'Comércio de Frutos Secos e Castanhas', '78901234000157', 'Rua Mercado', '45', 'Centro', '01020000', 'Box 34', '1132278899'),
	(58, 'Distribuidora de Produtos Orgânicos', '89012345000158', 'Avenida Pacaembu', '900', 'Pacaembu', '01234000', 'Próximo ao estádio', '1136621122'),
	(59, 'Moinho de Milho e Fubá Brasil', '90123456000159', 'Rua Alagoas', '300', 'Savassi', '30130010', 'Próximo à praça', '3132614455'),
	(60, 'Distribuidora de Enlatados e Conservas', '01234567000160', 'Rua Voluntários da Pátria', '800', 'Botafogo', '22270001', 'Esquina com a Real Grandeza', '2125378899'),
	(61, 'Atacado de Condimentos e Especiarias', '12345678000161', 'Rua da Cantareira', '306', 'Centro', '01024000', 'Mercado Municipal, Loja 15', '1132284455'),
	(62, 'Distribuidora de Queijos Artesanais', '23456789000162', 'Rua Guajajaras', '700', 'Lourdes', '30180100', 'Ao lado do banco', '3132718899'),
	(63, 'Plásticos e Filmes Industriais', '34567890000163', 'Avenida do Estado', '5000', 'Mooca', '03105000', 'Galpão A', '1122921100'),
	(64, 'Distribuidora de Aves e Ovos', '45678901000164', 'Avenida Cruz Cabugá', '1100', 'Santo Amaro', '50040000', 'Próximo ao parque', '8132214455'),
	(65, 'Comercial de Bebidas Destiladas', '56789012000165', 'Avenida Atlântica', '2000', 'Copacabana', '22021000', 'Posto 4', '2125481122'),
	(66, 'Produtores de Polpa de Frutas do Norte', '67890123000166', 'Avenida Almirante Barroso', '1500', 'Marco', '66093020', 'Galpão 8', '9132468899'),
	(67, 'Insumos Químicos e Essências', '78901234000167', 'Rua Vergueiro', '2200', 'Vila Mariana', '04102000', 'Andar 5', '1150831122'),
	(68, 'Distribuidora de Congelados Express', '89012345000168', 'Avenida Assis Brasil', '4000', 'São Sebastião', '91110000', 'Em frente ao terminal', '5133487788'),
	(69, 'Atacado de Farináceos e Cereais', '90123456000169', 'Rua Visconde de Mauá', '1000', 'Aldeota', '60125160', 'Esquina com a Santos Dumont', '8532614455'),
	(70, 'Importadora de Azeites Mediterrâneo', '01234567000170', 'Avenida Faria Lima', '3000', 'Itaim Bibi', '04538132', 'Conjunto 101', '1130789900'),
	(71, 'Distribuidora de Carnes e Suínos', '12345678000171', 'Rua XV de Novembro', '1800', 'Alto da XV', '80045125', 'Próximo ao viaduto', '4132641122'),
	(72, 'Equipamentos para Bares e Rest. ME', '23456789000172', 'Rua Riachuelo', '500', 'Centro', '20230014', 'Loja B', '2122245566'),
	(73, 'Distribuidora de Produtos Veganos', '34567890000173', 'Rua Augusta', '1500', 'Consolação', '01305100', 'Próximo ao parque Augusta', '1131592233'),
	(74, 'Atacado de Castanhas e Nozes', '45678901000174', 'Rua das Marrecas', '120', 'Lapa', '20031120', 'Perto da estação', '2122408899'),
	(75, 'Comércio de Mariscos e Peixes', '56789012000175', 'Rua do Sol', '50', 'Centro', '65020000', 'Próximo ao porto', '9832314455'),
	(76, 'Distribuidora de Chás e Ervas', '67890123000176', 'Rua das Laranjeiras', '500', 'Laranjeiras', '22240003', 'Próximo ao metrô Largo do Machado', '2125571122'),
	(77, 'Insumos de Confeitaria Doce Mel', '78901234000177', 'Avenida Bento Gonçalves', '3000', 'Partenon', '90650001', 'Em frente à garagem de ônibus', '5133398899'),
	(78, 'Produtores de Hortaliças Hidropônicas', '89012345000178', 'Estrada do Redentor', '500', 'Alto da Boa Vista', '20531540', 'Sítio 3', '2124921122'),
	(79, 'Distribuidora de Açaí e Polpas', '90123456000179', 'Avenida Augusto Montenegro', '4500', 'Cabanagem', '66625000', 'KM 7', '9132794455'),
	(80, 'Comercial de Aço e Ferramentas', '01234567000180', 'Avenida Sertório', '2000', 'Navegantes', '91020001', 'Galpão 4', '5133421100'),
	(81, 'Distribuidora de Frios Paulista', '12345678000181', 'Rua Domingos de Morais', '1800', 'Vila Mariana', '04010200', 'Próximo ao metrô Santa Cruz', '1155754455'),
	(82, 'Atacado de Sabões e Detergentes', '23456789000182', 'Avenida Brasil', '15000', 'Deodoro', '21615000', 'Galpão Industrial 8', '2133591122'),
	(83, 'Embalagens de Alumínio e Térmicas', '34567890000183', 'Rua do Gasômetro', '400', 'Brás', '03004000', 'Loja 5', '1132271122'),
	(84, 'Distribuidora de Massas Frescas', '45678901000184', 'Rua Treze de Maio', '800', 'Bela Vista', '01327000', 'Bixiga', '1131068899'),
	(85, 'Comércio de Frutas de Época', '56789012000185', 'Avenida Senador Queirós', '200', 'Centro', '01026001', 'Box 18', '1133134455'),
	(86, 'Importadora de Vinhos do Porto', '67890123000186', 'Rua Dias Ferreira', '400', 'Leblon', '22431050', 'Próximo à praça', '2122741122'),
	(87, 'Atacado de Produtos Japoneses', '78901234000187', 'Rua Galvão Bueno', '500', 'Liberdade', '01506000', 'Loja 20', '1132084455'),
	(88, 'Distribuidora de Gelo e Refrigeração', '89012345000188', 'Avenida Beira Mar', '500', 'Praia do Canto', '29055500', 'Próximo ao iate clube', '2732251122'),
	(89, 'Insumos de Cervejaria Malte & Cia', '90123456000189', 'Rua Almirante Tamandaré', '300', 'Flamengo', '22210060', 'Andar 2', '2125584455'),
	(90, 'Comércio de Avelãs e Amêndoas', '01234567000190', 'Rua do Imperador', '600', 'Santo Antônio', '50010000', 'Próximo ao fórum', '8132241122'),
	(91, 'Distribuidora de Batatas Congeladas', '12345678000191', 'Avenida das Américas', '10000', 'Barra da Tijuca', '22793081', 'Barra World', '2124318899'),
	(92, 'Atacado de Papel Higiênico e Toalhas', '23456789000192', 'Rua Voluntários da Pátria', '1200', 'Centro', '80020000', 'Galpão Central', '4132228899'),
	(93, 'Comercial de Pescados do Sul', '34567890000193', 'Rua do Porto', '150', 'Porto', '88301000', 'Docas 2', '4733481122'),
	(94, 'Distribuidora de Balas e Chicletes', '45678901000194', 'Rua da Palma', '300', 'Santo Antônio', '50010040', 'Próximo à ponte', '8132248899'),
	(95, 'Equipamentos de Proteção EPI', '56789012000195', 'Avenida Rangel Pestana', '1500', 'Brás', '03001000', 'Loja 10', '1126931122'),
	(96, 'Produtores de Cogumelos Frescos', '67890123000196', 'Estrada do Capuava', '1200', 'Moinho Velho', '06700000', 'Sítio Cogumelo', '1146124455'),
	(97, 'Distribuidora de Conservas de Peixe', '78901234000197', 'Avenida Brasil', '5000', 'Caju', '20930040', 'Portão 4', '2125801122'),
	(98, 'Atacado de Farinha de Mandioca', '89012345000198', 'Avenida Marechal Castelo Branco', '1500', 'Cabral', '64000810', 'Próximo à montadora', '8632224455'),
	(99, 'Comércio de Vinagres e Azeitonas', '90123456000199', 'Rua das Flores', '300', 'Centro', '13010000', 'Atrás da catedral', '1932318899'),
	(100, 'Distribuidora de Laticínios Vale Verde', '01234567000200', 'Avenida Protásio Alves', '3500', 'Petrópolis', '90410004', 'Ao lado do supermercado', '5133348899'),
	(101, 'Fornecedor de Teste', '123123122133', 'Rua d', '123', 'Distrito Industrial', '88000', 'Próximo ao galpão principal', '49 99999999');

-- Copiando estrutura para tabela producao.pedidos
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_clientes` int DEFAULT NULL,
  `id_produtos` int DEFAULT NULL,
  `num_ped` varchar(255) DEFAULT NULL,
  `quantidade` float NOT NULL,
  `data_ped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.pedidos: ~100 rows (aproximadamente)
INSERT INTO `pedidos` (`id`, `id_clientes`, `id_produtos`, `num_ped`, `quantidade`, `data_ped`) VALUES
	(1, 1, 12, 'PED-1001', 3, '2026-06-01 00:00:00'),
	(2, 15, 45, 'PED-1002', 1, '2026-06-01 00:00:00'),
	(3, 32, 3, 'PED-1003', 10, '2026-06-02 00:00:00'),
	(4, 8, 88, 'PED-1004', 2, '2026-06-02 00:00:00'),
	(5, 47, 19, 'PED-1005', 5, '2026-06-03 00:00:00'),
	(6, 23, 67, 'PED-1006', 1, '2026-06-03 00:00:00'),
	(7, 50, 24, 'PED-1007', 4, '2026-06-04 00:00:00'),
	(8, 11, 91, 'PED-1008', 2, '2026-06-04 00:00:00'),
	(9, 5, 5, 'PED-1009', 1, '2026-06-05 00:00:00'),
	(10, 29, 30, 'PED-1010', 12, '2026-06-05 00:00:00'),
	(11, 18, 72, 'PED-1011', 3, '2026-06-06 00:00:00'),
	(12, 41, 15, 'PED-1012', 6, '2026-06-06 00:00:00'),
	(13, 3, 8, 'PED-1013', 2, '2026-06-07 00:00:00'),
	(14, 37, 54, 'PED-1014', 1, '2026-06-07 00:00:00'),
	(15, 14, 99, 'PED-1015', 8, '2026-06-08 00:00:00'),
	(16, 26, 40, 'PED-1016', 5, '2026-06-08 00:00:00'),
	(17, 9, 21, 'PED-1017', 2, '2026-06-09 00:00:00'),
	(18, 44, 63, 'PED-1018', 4, '2026-06-09 00:00:00'),
	(19, 20, 10, 'PED-1019', 1, '2026-06-10 00:00:00'),
	(20, 35, 82, 'PED-1020', 3, '2026-06-10 00:00:00'),
	(21, 2, 27, 'PED-1021', 15, '2026-06-11 00:00:00'),
	(22, 48, 50, 'PED-1022', 2, '2026-06-11 00:00:00'),
	(23, 13, 36, 'PED-1023', 6, '2026-06-12 00:00:00'),
	(24, 31, 78, 'PED-1024', 1, '2026-06-12 00:00:00'),
	(25, 22, 14, 'PED-1025', 4, '2026-06-13 00:00:00'),
	(26, 40, 93, 'PED-1026', 2, '2026-06-13 00:00:00'),
	(27, 7, 4, 'PED-1027', 10, '2026-06-14 00:00:00'),
	(28, 19, 61, 'PED-1028', 3, '2026-06-14 00:00:00'),
	(29, 38, 85, 'PED-1029', 1, '2026-06-15 00:00:00'),
	(30, 4, 100, 'PED-1030', 5, '2026-06-15 00:00:00'),
	(31, 46, 17, 'PED-1031', 2, '2026-06-16 00:00:00'),
	(32, 12, 33, 'PED-1032', 7, '2026-06-16 00:00:00'),
	(33, 28, 70, 'PED-1033', 1, '2026-06-17 00:00:00'),
	(34, 34, 48, 'PED-1034', 3, '2026-06-17 00:00:00'),
	(35, 16, 2, 'PED-1035', 8, '2026-06-18 00:00:00'),
	(36, 43, 56, 'PED-1036', 4, '2026-06-18 00:00:00'),
	(37, 25, 79, 'PED-1037', 2, '2026-06-19 00:00:00'),
	(38, 10, 9, 'PED-1038', 12, '2026-06-19 00:00:00'),
	(39, 39, 65, 'PED-1039', 1, '2026-06-20 00:00:00'),
	(40, 6, 22, 'PED-1040', 3, '2026-06-20 00:00:00'),
	(41, 49, 87, 'PED-1041', 5, '2026-06-21 00:00:00'),
	(42, 21, 39, 'PED-1042', 2, '2026-06-21 00:00:00'),
	(43, 36, 11, 'PED-1043', 6, '2026-06-22 00:00:00'),
	(44, 17, 74, 'PED-1044', 1, '2026-06-22 00:00:00'),
	(45, 30, 96, 'PED-1045', 4, '2026-06-23 00:00:00'),
	(46, 45, 52, 'PED-1046', 9, '2026-06-23 00:00:00'),
	(47, 27, 28, 'PED-1047', 2, '2026-06-24 00:00:00'),
	(48, 33, 43, 'PED-1048', 3, '2026-06-24 00:00:00'),
	(49, 24, 80, 'PED-1049', 1, '2026-06-25 00:00:00'),
	(50, 42, 6, 'PED-1050', 5, '2026-06-25 00:00:00'),
	(51, 1, 95, 'PED-1051', 2, '2026-06-26 00:00:00'),
	(52, 15, 18, 'PED-1052', 4, '2026-06-26 00:00:00'),
	(53, 32, 62, 'PED-1053', 1, '2026-06-27 00:00:00'),
	(54, 8, 31, 'PED-1054', 6, '2026-06-27 00:00:00'),
	(55, 47, 76, 'PED-1055', 3, '2026-06-28 00:00:00'),
	(56, 23, 1, 'PED-1056', 10, '2026-06-28 00:00:00'),
	(57, 50, 49, 'PED-1057', 2, '2026-06-29 00:00:00'),
	(58, 11, 84, 'PED-1058', 5, '2026-06-29 00:00:00'),
	(59, 5, 13, 'PED-1059', 1, '2026-06-30 00:00:00'),
	(60, 29, 68, 'PED-1060', 4, '2026-06-30 00:00:00'),
	(61, 18, 25, 'PED-1061', 3, '2026-07-01 00:00:00'),
	(62, 41, 90, 'PED-1062', 2, '2026-07-01 00:00:00'),
	(63, 3, 57, 'PED-1063', 7, '2026-07-02 00:00:00'),
	(64, 37, 7, 'PED-1064', 8, '2026-07-02 00:00:00'),
	(65, 14, 42, 'PED-1065', 1, '2026-07-03 00:00:00'),
	(66, 26, 89, 'PED-1066', 3, '2026-07-03 00:00:00'),
	(67, 9, 16, 'PED-1067', 5, '2026-07-04 00:00:00'),
	(68, 44, 71, 'PED-1068', 2, '2026-07-04 00:00:00'),
	(69, 20, 35, 'PED-1069', 4, '2026-07-05 00:00:00'),
	(70, 35, 98, 'PED-1070', 1, '2026-07-05 00:00:00'),
	(71, 2, 53, 'PED-1071', 6, '2026-07-06 00:00:00'),
	(72, 48, 20, 'PED-1072', 2, '2026-07-06 00:00:00'),
	(73, 13, 64, 'PED-1073', 3, '2026-07-07 00:00:00'),
	(74, 31, 81, 'PED-1074', 10, '2026-07-07 00:00:00'),
	(75, 22, 26, 'PED-1075', 1, '2026-07-08 00:00:00'),
	(76, 40, 47, 'PED-1076', 4, '2026-07-08 00:00:00'),
	(77, 7, 92, 'PED-1077', 2, '2026-07-09 00:00:00'),
	(78, 19, 37, 'PED-1078', 5, '2026-07-09 00:00:00'),
	(79, 38, 59, 'PED-1079', 3, '2026-07-10 00:00:00'),
	(80, 4, 73, 'PED-1080', 1, '2026-07-10 00:00:00'),
	(81, 46, 86, 'PED-1081', 8, '2026-07-11 00:00:00'),
	(82, 12, 29, 'PED-1082', 2, '2026-07-11 00:00:00'),
	(83, 28, 66, 'PED-1083', 4, '2026-07-12 00:00:00'),
	(84, 34, 94, 'PED-1084', 1, '2026-07-12 00:00:00'),
	(85, 16, 51, 'PED-1085', 6, '2026-07-13 00:00:00'),
	(86, 43, 38, 'PED-1086', 3, '2026-07-13 00:00:00'),
	(87, 25, 100, 'PED-1087', 2, '2026-07-14 00:00:00'),
	(88, 10, 46, 'PED-1088', 5, '2026-07-14 00:00:00'),
	(89, 39, 77, 'PED-1089', 1, '2026-07-15 00:00:00'),
	(90, 6, 23, 'PED-1090', 7, '2026-07-15 00:00:00'),
	(91, 49, 60, 'PED-1091', 2, '2026-07-16 00:00:00'),
	(92, 21, 83, 'PED-1092', 4, '2026-07-16 00:00:00'),
	(93, 36, 34, 'PED-1093', 3, '2026-07-17 00:00:00'),
	(94, 17, 97, 'PED-1094', 1, '2026-07-17 00:00:00'),
	(95, 30, 14, 'PED-1095', 5, '2026-07-18 00:00:00'),
	(96, 45, 69, 'PED-1096', 2, '2026-07-18 00:00:00'),
	(97, 27, 41, 'PED-1097', 6, '2026-07-19 00:00:00'),
	(98, 33, 75, 'PED-1098', 1, '2026-07-19 00:00:00'),
	(99, 24, 32, 'PED-1099', 4, '2026-07-20 00:00:00'),
	(100, 42, 58, 'PED-1100', 3, '2026-07-20 00:00:00'),
	(101, 10, 1, 'PED1200', 4, '2026-09-10 00:00:00');

-- Copiando estrutura para tabela producao.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo_barras` varchar(100) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` longtext,
  `estoque` float NOT NULL,
  `valor` float NOT NULL,
  `data_fabricacao` datetime DEFAULT NULL,
  `data_validade` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.produtos: ~100 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `codigo_barras`, `nome`, `descricao`, `estoque`, `valor`, `data_fabricacao`, `data_validade`) VALUES
	(1, '7891000100011', 'Arroz Integral 1kg', 'Arroz integral tipo 1, rico em fibras e nutrientes.', 151, 8.9, '2026-01-10 00:00:00', '2027-01-10 00:00:00'),
	(2, '7891000100028', 'Feijão Preto 1kg', 'Feijão preto selecionado, ideal para feijoada.', 200, 7.5, '2026-02-05 00:00:00', '2027-02-05 00:00:00'),
	(3, '7891000100035', 'sabão em pó omo', 'Açúcar refinado de alta pureza e rápida dissolução.', 300, 4.2, '2026-01-15 00:00:00', '2028-01-15 00:00:00'),
	(4, '7891000100042', 'Café Torrado e Moído 500g', 'Café tradicional de aroma intenso e sabor encorpado.', 180, 16.9, '2026-03-01 00:00:00', '2027-03-01 00:00:00'),
	(5, '7891000100059', 'Azeite de Oliva Extra Virgem 500ml', 'Azeite de oliva prensa a frio, acidez máxima 0,5%.', 80, 39.9, '2025-11-20 00:00:00', '2027-11-20 00:00:00'),
	(6, '7891000100066', 'Óleo de Soja 900ml', 'Óleo vegetal refinado de soja para uso culinário.', 250, 6.8, '2026-02-10 00:00:00', '2027-02-10 00:00:00'),
	(7, '7891000100073', 'Macarrão Espaguete 500g', 'Massa de sêmola com ovos tipo espaguete n° 8.', 220, 4.5, '2026-01-22 00:00:00', '2028-01-22 00:00:00'),
	(8, '7891000100080', 'Molho de Tomate Tradicional 340g', 'Extrato de tomate com temperos naturais.', 190, 3.2, '2026-02-18 00:00:00', '2027-08-18 00:00:00'),
	(9, '7891000100097', 'Leite Integral 1L', 'Leite UHT integral de alta qualidade.', 400, 5.3, '2026-04-01 00:00:00', '2026-08-01 00:00:00'),
	(10, '7891000100103', 'Manteiga com Sal 200g', 'Manteiga de leite de primeira qualidade.', 95, 11.5, '2026-03-15 00:00:00', '2026-07-15 00:00:00'),
	(11, '7891000100110', 'Queijo Mussarela 500g', 'Queijo mussarela fatiado para lanches.', 60, 24.9, '2026-04-10 00:00:00', '2026-06-10 00:00:00'),
	(12, '7891000100127', 'Presunto Cozido 500g', 'Presunto magro fatiado sem capa de gordura.', 50, 18.9, '2026-04-12 00:00:00', '2026-06-12 00:00:00'),
	(13, '7891000100134', 'Pão de Forma Tradicional 400g', 'Pão macio ideal para rabanadas e torradas.', 110, 7.9, '2026-04-20 00:00:00', '2026-05-20 00:00:00'),
	(14, '7891000100141', 'Biscoito Recheado Chocolate 140g', 'Biscoito crocante com recheio cremoso.', 390, 3.5, '2026-02-25 00:00:00', '2027-02-25 00:00:00'),
	(15, '7891000100158', 'Cereal Matinal 300g', 'Flocos de milho enriquecidos com vitaminas.', 130, 12.4, '2026-01-05 00:00:00', '2027-01-05 00:00:00'),
	(16, '7891000100165', 'Sabão em Pó 1kg', 'Detergente em pó para lavagem de roupas.', 210, 14.9, '2025-10-10 00:00:00', '2028-10-10 00:00:00'),
	(17, '7891000100172', 'Amaciante de Roupas 2L', 'Amaciante concentrado de perfume duradouro.', 140, 19.8, '2026-01-08 00:00:00', '2028-01-08 00:00:00'),
	(18, '7891000100189', 'Detergente Líquido Neutro 500ml', 'Lava-louças concentrado com alto rendimento.', 320, 2.8, '2026-02-12 00:00:00', '2028-02-12 00:00:00'),
	(19, '7891000100196', 'Desinfetante Pinho 1L', 'Limpeza profunda com ação bactericida.', 170, 7.2, '2026-03-05 00:00:00', '2028-03-05 00:00:00'),
	(20, '7891000100202', 'Papel Higiênico Folha Dupla 12un', 'Papel higiênico macio e absorvente.', 280, 18.5, '2025-12-01 00:00:00', '2030-12-01 00:00:00'),
	(21, '7891000100219', 'Shampoo Anticaspa 400ml', 'Fórmula de controle e prevenção de caspa.', 90, 22.9, '2026-01-18 00:00:00', '2029-01-18 00:00:00'),
	(22, '7891000100226', 'Condicionador Hidratante 400ml', 'Hidratação profunda para cabelos ressecados.', 85, 24.5, '2026-01-18 00:00:00', '2029-01-18 00:00:00'),
	(23, '7891000100233', 'Sabonete em Barra 90g', 'Sabonete hidratante com fragrância suave.', 500, 2.5, '2026-02-20 00:00:00', '2029-02-20 00:00:00'),
	(24, '7891000100240', 'Creme Dental 90g', 'Proteção anticárie com refrescância prolongada.', 410, 4.9, '2026-03-10 00:00:00', '2028-03-10 00:00:00'),
	(25, '7891000100257', 'Escova de Dentes Macia', 'Cerdas ultramacias com limpador de língua.', 160, 9.9, '2025-09-15 00:00:00', '2030-09-15 00:00:00'),
	(26, '7891000100264', 'Desodorante Aerossol 150ml', 'Proteção 48h antiperspirante sem álcool.', 230, 15.9, '2026-02-01 00:00:00', '2029-02-01 00:00:00'),
	(27, '7891000100271', 'Água Mineral sem Gás 1.5L', 'Água purificada de fonte natural.', 600, 3, '2026-03-01 00:00:00', '2027-03-01 00:00:00'),
	(28, '7891000100288', 'Refrigerante de Cola 2L', 'Bebida gaseificada com extrato de noz de cola.', 340, 8.5, '2026-03-20 00:00:00', '2026-09-20 00:00:00'),
	(29, '7891000100295', 'Suco de Laranja Integral 1L', 'Suco 100% natural sem adição de açúcar.', 120, 11.9, '2026-04-05 00:00:00', '2026-08-05 00:00:00'),
	(30, '7891000100301', 'Cerveja Pilsen Lata 350ml', 'Cerveja leve e refrescante.', 800, 3.9, '2026-02-15 00:00:00', '2026-11-15 00:00:00'),
	(31, '7891000100318', 'Vinho Tinto Seco 750ml', 'Vinho fino elaborado com uvas Cabernet Sauvignon.', 75, 45, '2024-05-10 00:00:00', '2029-05-10 00:00:00'),
	(32, '7891000100325', 'Chocolate ao Leite 80g', 'Barra de chocolate ao leite cremoso.', 290, 5.9, '2026-01-30 00:00:00', '2027-01-30 00:00:00'),
	(33, '7891000100332', 'Batata Palha 120g', 'Batata frita crocante ideal para strogonoff.', 180, 6.5, '2026-02-14 00:00:00', '2026-08-14 00:00:00'),
	(34, '7891000100349', 'Maionese Tradicional 500g', 'Molho cremoso com ovos caipiras.', 160, 7.8, '2026-01-11 00:00:00', '2026-10-11 00:00:00'),
	(35, '7891000100356', 'Ketchup Picante 400g', 'Ketchup elaborado com tomates selecionados.', 140, 8.2, '2026-02-08 00:00:00', '2027-02-08 00:00:00'),
	(36, '7891000100363', 'Mostarda Amarela 200g', 'Mostarda de sabor suave para lanches.', 130, 5.4, '2026-02-08 00:00:00', '2027-02-08 00:00:00'),
	(37, '7891000100370', 'Farinha de Trigo Especial 1kg', 'Farinha tipo 1 ideal para pães e bolos.', 270, 4.8, '2026-01-20 00:00:00', '2027-01-20 00:00:00'),
	(38, '7891000100387', 'Fermento em Pó Químico 100g', 'Fermento instantâneo para bolos e massas.', 210, 3.8, '2026-02-02 00:00:00', '2027-08-02 00:00:00'),
	(39, '7891000100394', 'Sal Refinado 1kg', 'Sal iodado de mesa.', 550, 2.1, '2025-08-01 00:00:00', '2030-08-01 00:00:00'),
	(40, '7891000100400', 'Sardinha em Óleo 125g', 'Conserva de sardinha limpa e pronta para consumo.', 230, 4.9, '2025-11-01 00:00:00', '2028-11-01 00:00:00'),
	(41, '7891000100417', 'Atum Sólido em Água 170g', 'Conserva de atum natural de baixa gordura.', 190, 8.9, '2025-12-10 00:00:00', '2028-12-10 00:00:00'),
	(42, '7891000100424', 'Milho Verde em Conserva 170g', 'Grãos de milho cozidos no vapor.', 310, 3.7, '2026-01-05 00:00:00', '2028-01-05 00:00:00'),
	(43, '7891000100431', 'Ervilha em Conserva 170g', 'Ervilhas reidratadas macias.', 280, 3.5, '2026-01-05 00:00:00', '2028-01-05 00:00:00'),
	(44, '7891000100448', 'Creme de Leite 200g', 'Creme de leite leve com 17% de gordura.', 360, 3.9, '2026-03-01 00:00:00', '2026-11-01 00:00:00'),
	(45, '7891000100455', 'Leite Condensado 395g', 'Leite condensado semidesnatado para sobremesas.', 340, 6.2, '2026-02-15 00:00:00', '2027-02-15 00:00:00'),
	(46, '7891000100462', 'Achocolatado em Pó 400g', 'Pó para preparo de bebida sabor chocolate.', 250, 7.9, '2026-01-10 00:00:00', '2027-07-10 00:00:00'),
	(47, '7891000100479', 'Gelatina Sabor Morango 20g', 'Mistura em pó para sobremesa de gelatina.', 420, 1.8, '2026-02-28 00:00:00', '2028-02-28 00:00:00'),
	(48, '7891000100486', 'Mistura para Bolo de Fubá 400g', 'Mistura pronta para bolo caseiro.', 160, 6.4, '2026-01-18 00:00:00', '2026-11-18 00:00:00'),
	(49, '7891000100493', 'Aveia em Flocos Finos 170g', 'Aveia integral rica em fibras.', 170, 5.2, '2026-02-22 00:00:00', '2027-02-22 00:00:00'),
	(50, '7891000100509', 'Granola Tradicional 300g', 'CEREAL de aveia com castanhas e frutas secas.', 110, 13.9, '2026-03-01 00:00:00', '2027-03-01 00:00:00'),
	(51, '7891000100516', 'Chá Verde Sachê 25g', 'Caixa com 15 sachês de chá verde natural.', 140, 6.8, '2026-01-08 00:00:00', '2028-01-08 00:00:00'),
	(52, '7891000100523', 'Adoçante Líquido Sucralose 80ml', 'Adoçante dietético de baixa caloria.', 95, 9.9, '2025-10-20 00:00:00', '2028-10-20 00:00:00'),
	(53, '7891000100530', 'Amendoim Torrado sem Sal 150g', 'Petisco crocante e nutritivo.', 210, 4.5, '2026-03-10 00:00:00', '2026-09-10 00:00:00'),
	(54, '7891000100547', 'Castanha de Caju Torrada 100g', 'Castanha inteira de primeira qualidade.', 80, 17.5, '2026-02-15 00:00:00', '2026-10-15 00:00:00'),
	(55, '7891000100554', 'Biscoito Cream Cracker 400g', 'Biscoito salgado crocante e leve.', 260, 5.8, '2026-01-25 00:00:00', '2027-01-25 00:00:00'),
	(56, '7891000100561', 'Torrada Tradicional 140g', 'Torradas crocantes para café da manhã.', 180, 4.9, '2026-02-18 00:00:00', '2026-10-18 00:00:00'),
	(57, '7891000100578', 'Goiabada Cascão 300g', 'Doce de goiaba tradicional fatiado.', 130, 6.9, '2026-01-12 00:00:00', '2027-01-12 00:00:00'),
	(58, '7891000100585', 'Doce de Leite Cremoso 400g', 'Doce de leite artesanal.', 100, 12.8, '2026-02-10 00:00:00', '2026-12-10 00:00:00'),
	(59, '7891000100592', 'Requeijão Cremoso 200g', 'Creme de queijo para passar no pão.', 170, 8.5, '2026-04-02 00:00:00', '2026-07-02 00:00:00'),
	(60, '7891000100608', 'Iogurte Natural 170g', 'Iogurte sem adição de açúcares.', 220, 3.2, '2026-04-10 00:00:00', '2026-05-25 00:00:00'),
	(61, '7891000100615', 'Iogurte Grego Morango 100g', 'Iogurte cremoso com pedaços de fruta.', 190, 4.1, '2026-04-10 00:00:00', '2026-05-25 00:00:00'),
	(62, '7891000100622', 'Margarina com Sal 500g', 'Margarina cremosa rica em lipídios.', 230, 6.9, '2026-02-20 00:00:00', '2026-08-20 00:00:00'),
	(63, '7891000100639', 'Hamburguer Bovina 670g', 'Caixa com 12 unidades congeladas.', 85, 21.9, '2026-01-05 00:00:00', '2026-09-05 00:00:00'),
	(64, '7891000100646', 'Nuggets de Frango 300g', 'Empanados de frango prontos para assar.', 140, 11.5, '2026-02-01 00:00:00', '2026-10-01 00:00:00'),
	(65, '7891000100653', 'Pizza Congelada Calabresa 460g', 'Pizza pronta para forno com borda simples.', 95, 15.9, '2026-01-15 00:00:00', '2026-07-15 00:00:00'),
	(66, '7891000100660', 'Lasanha à Bolonhesa 600g', 'Lasanha congelada pronta para micro-ondas.', 110, 16.8, '2026-02-10 00:00:00', '2026-08-10 00:00:00'),
	(67, '7891000100677', 'Batata Palito Congelada 1kg', 'Batatas pré-fritas para fritadeira ou forno.', 130, 18.9, '2026-01-20 00:00:00', '2027-01-20 00:00:00'),
	(68, '7891000100684', 'Polpa de Acerola Congelada 100g', 'Polpa 100% fruta natural.', 300, 2.5, '2026-03-01 00:00:00', '2027-03-01 00:00:00'),
	(69, '7891000100691', 'Sorvete de Creme 1.5L', 'Sobremesa gelada cremosa sabor creme.', 70, 23.9, '2026-01-10 00:00:00', '2027-01-10 00:00:00'),
	(70, '7891000100707', 'Pão de Queijo Congelado 400g', 'Pão de queijo mineiro pronto para assar.', 160, 12.5, '2026-02-25 00:00:00', '2026-08-25 00:00:00'),
	(71, '7891000100714', 'Limpador Multiuso 500ml', 'Limpador para superfícies laváveis.', 210, 4.9, '2026-01-15 00:00:00', '2028-01-15 00:00:00'),
	(72, '7891000100721', 'Lustra Móveis Lavanda 200ml', 'Protege e dá brilho a superfícies de madeira.', 100, 8.5, '2025-11-10 00:00:00', '2028-11-10 00:00:00'),
	(73, '7891000100738', 'Lava Roupas Líquido 3L', 'Sabão líquido para roupas delicadas.', 90, 32.9, '2026-02-10 00:00:00', '2028-02-10 00:00:00'),
	(74, '7891000100745', 'Água Sanitária 2L', 'Desinfetante e alvejante para limpeza geral.', 300, 5.5, '2026-03-01 00:00:00', '2027-03-01 00:00:00'),
	(75, '7891000100752', 'Esponja de Aço com 8un', 'Esponja abrasiva para limpeza pesada.', 240, 4.2, '2025-06-01 00:00:00', '2030-06-01 00:00:00'),
	(76, '7891000100769', 'Esponja Multiuso Dupla Face 3un', 'Esponja macia para lavar louças.', 350, 3.8, '2025-08-10 00:00:00', '2030-08-10 00:00:00'),
	(77, '7891000100776', 'Saco para Lixo 50L 10un', 'Sacos reforçados para resíduos domésticos.', 200, 9.9, '2025-09-01 00:00:00', '2030-09-01 00:00:00'),
	(78, '7891000100783', 'Inseticida Aerossol 300ml', 'Inseticida à base de água contra insetos.', 150, 14.2, '2026-01-05 00:00:00', '2028-01-05 00:00:00'),
	(79, '7891000100790', 'Fio Dental 50m', 'Fio dental com sabor de menta.', 220, 7.9, '2025-12-01 00:00:00', '2030-12-01 00:00:00'),
	(80, '7891000100806', 'Enxaguante Bucal 500ml', 'Antisséptico bucal sem álcool.', 130, 18.9, '2026-02-15 00:00:00', '2028-02-15 00:00:00'),
	(81, '7891000100813', 'Haste Flexível com Algodão 75un', 'Cotonetes para higiene pessoal.', 310, 3.9, '2025-10-01 00:00:00', '2030-10-01 00:00:00'),
	(82, '7891000100820', 'Algodão em Disco 50g', 'Discos de algodão para remoção de maquiagem.', 180, 6.5, '2025-11-15 00:00:00', '2030-11-15 00:00:00'),
	(83, '7891000100837', 'Protetor Solar FPS 50 120g', 'Alta proteção contra raios UVA/UVB.', 70, 39.9, '2026-01-20 00:00:00', '2028-01-20 00:00:00'),
	(84, '7891000100844', 'Repelente de Insetos 200ml', 'Lança spray com ação duradoura.', 110, 21.5, '2026-02-10 00:00:00', '2028-02-10 00:00:00'),
	(85, '7891000100851', 'Papel Toalha Folha Dupla 2 rolos', 'Toalha de papel para cozinha altamente absorvente.', 260, 5.9, '2025-07-01 00:00:00', '2030-07-01 00:00:00'),
	(86, '7891000100868', 'Guardanapo de Papel 50un', 'Guardanapos folha simples 30x30cm.', 400, 2.9, '2025-08-01 00:00:00', '2030-08-01 00:00:00'),
	(87, '7891000100875', 'Filtro de Papel para Café 30un', 'Filtro tamanho 103 para preparo de café.', 230, 4.5, '2025-09-10 00:00:00', '2030-09-10 00:00:00'),
	(88, '7891000100882', 'Fio de Nylon para Varal 10m', 'Varal plástico resistente para roupas.', 90, 6, '2025-01-01 00:00:00', '2035-01-01 00:00:00'),
	(89, '7891000100899', 'Lâmpada LED 9W Bivolt', 'Lâmpada de luz branca e baixo consumo.', 150, 8.9, '2025-05-10 00:00:00', '2030-05-10 00:00:00'),
	(90, '7891000100905', 'Pilha Alcalina AA com 4un', 'Pilhas de longa duração para eletrônicos.', 180, 15.9, '2025-06-15 00:00:00', '2030-06-15 00:00:00'),
	(91, '7891000100912', 'Ração para Cães Adultos 3kg', 'Alimento completo sabor carne e vegetais.', 65, 42, '2026-01-10 00:00:00', '2027-01-10 00:00:00'),
	(92, '7891000100929', 'Ração para Gatos Castrados 1kg', 'Alimento balanceado sabor peixe.', 85, 23.5, '2026-02-05 00:00:00', '2027-02-05 00:00:00'),
	(93, '7891000100936', 'Areia Sanitária para Gatos 4kg', 'Areia absorvente com controle de odor.', 120, 14.9, '2025-11-01 00:00:00', '2030-11-01 00:00:00'),
	(94, '7891000100943', 'Petisco para Cães Cuidado Oral 7un', 'Snack funcional que auxilia na limpeza dos dentes.', 140, 11.9, '2026-01-15 00:00:00', '2027-01-15 00:00:00'),
	(95, '7891000100950', 'Sachê para Gatos Sabor Frango 85g', 'Alimento úmido completo para gatos.', 300, 3.2, '2026-02-20 00:00:00', '2028-02-20 00:00:00'),
	(96, '7891000100967', 'Carvão Vegetal 3kg', 'Carvão vegetal ideal para churrasco.', 95, 19.9, '2025-04-01 00:00:00', '2035-04-01 00:00:00'),
	(97, '7891000100974', 'Acendedor Sólido para Churrasqueira', 'Blocos acendedores de fácil ignição.', 130, 7.5, '2025-05-01 00:00:00', '2030-05-01 00:00:00'),
	(98, '7891000100981', 'Sal Grosso para Churrasco 1kg', 'Sal de granulação grossa sem tempero.', 280, 3.1, '2025-08-01 00:00:00', '2030-08-01 00:00:00'),
	(99, '7891000100998', 'Fosforo de Madeira Caixa com 10', 'Caixas de fósforos com lixa lateral.', 210, 4.8, '2025-02-01 00:00:00', '2030-02-01 00:00:00'),
	(100, '7891000101001', 'Vela Votiva Branca 260g', 'Vela de parafina 100% pura.', 160, 8.9, '2025-03-01 00:00:00', '2035-03-01 00:00:00'),
	(101, '1111', 'caneta azul', 'caneta azul bem azul', 500, 400, '2026-08-10 00:00:00', '2030-01-01 00:00:00');

-- Copiando estrutura para procedure producao.sp_compras_por_fornecedor
DELIMITER //
CREATE PROCEDURE `sp_compras_por_fornecedor`(
	IN `p_id_fornecedor` INT,
	IN `p_data_inicio` DATE,
	IN `p_data_fim` DATE
)
BEGIN 
	SELECT 
		c.codigo,
		p.nome AS produto,
		c.quantidade,
		c.data_comprar,
		f.nome AS fornecedor
	FROM compras c
	INNER JOIN fornecedores f ON f.id = c.id_fornecedor
	INNER JOIN produtos p ON p.id = c.id_produtos
	WHERE c.id_fornecedor = p_id_fornecedor
	AND c.data_comprar BETWEEN p_data_inicio AND p_data_fim;
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_registrar_compra
DELIMITER //
CREATE PROCEDURE `sp_registrar_compra`(
	IN `p_id_fornecedor` INT,
	IN `p_id_produto` INT,
	IN `p_quantidade` INT,
	IN `p_codigo` VARCHAR(50)
)
BEGIN
	INSERT INTO compras (id_fornecedor, 
	id_produtos, 
	quantidade, 
	codigo, 
	data_comprar)
	VALUES (
		p_id_fornecedor,
		p_id_produto,
		p_quantidade,
		p_codigo,
		NOW()
	);
END//
DELIMITER ;

-- Copiando estrutura para procedure producao.sp_update_produtos
DELIMITER //
CREATE PROCEDURE `sp_update_produtos`(
	IN `p_id` INT,
	IN `p_novo_codigo_barras` VARCHAR(100),
	IN `p_novo_nome` VARCHAR(255),
	IN `p_nova_descricao` LONGTEXT,
	IN `p_novo_estoque` FLOAT,
	IN `P_novo_valor` DECIMAL(10,2),
	IN `p_nova_data_fabricacao` DATETIME,
	IN `p_nova_data_validade` DATETIME
)
BEGIN
	UPDATE produtos 
	SET 
	codigo_barras = COALESCE(p_novo_codigo_barras, codigo_barras),
	nome = COALESCE(p_novo_nome, nome),
	descricao = COALESCE(p_nova_descricao, descricao), 
	estoque = COALESCE(p_novo_estoque, estoque),
	valor = COALESCE(p_novo_valor, valor),
	data_fabricacao = COALESCE(p_nova_data_fabricacao, data_fabricacao),
	data_validade = COALESCE(p_nova_data_validade, data_validade)
	WHERE id = p_id;
END//
DELIMITER ;

-- Copiando estrutura para tabela producao.tmp_historico_produtos
CREATE TABLE IF NOT EXISTS `tmp_historico_produtos` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT '0',
  `nome_antigo` varchar(255) DEFAULT NULL,
  `preço_antigo` decimal(10,2) DEFAULT NULL,
  `estoque_antigo` float DEFAULT NULL,
  `data_alteracao` datetime DEFAULT (now()),
  `usuario_alteracao` varchar(100) DEFAULT NULL,
  KEY `Index 1` (`id_historico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela producao.tmp_historico_produtos: ~4 rows (aproximadamente)
INSERT INTO `tmp_historico_produtos` (`id_historico`, `produto_id`, `nome_antigo`, `preço_antigo`, `estoque_antigo`, `data_alteracao`, `usuario_alteracao`) VALUES
	(1, 3, 'Açúcar Refinado 1kg', 4.20, 300, '2026-10-01 14:44:28', 'root@localhost'),
	(2, 14, 'Biscoito Recheado Chocolate 140g', 3.50, 350, '2026-10-01 15:10:55', 'root@localhost'),
	(3, 101, 'nao sei', 1.00, 1, '2026-10-01 16:34:15', 'root@localhost'),
	(4, 101, 'caneta azul', 1.00, 1, '2026-10-01 16:34:41', 'root@localhost'),
	(5, 101, 'caneta azul', 2.00, 2, '2026-10-01 17:14:51', 'root@localhost'),
	(6, 101, 'caneta azul', 109.00, 10, '2026-10-08 14:39:42', 'root@localhost'),
	(7, 39, 'Sal Refinado 1kg', 2.10, 500, '2026-10-08 14:46:53', 'root@localhost');

-- Copiando estrutura para view producao.view_clientes_com_mais_compras
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `view_clientes_com_mais_compras` (
	`nome` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`total_compras` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para trigger producao.tgr_atualiza_estoque_compras
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tgr_atualiza_estoque_compras` AFTER INSERT ON `compras` FOR EACH ROW BEGIN
	UPDATE produtos
	SET estoque = estoque + NEW.quantidade
	WHERE id = NEW.id_produtos;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_atualiza_estoque_pedido
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_atualiza_estoque_pedido` AFTER INSERT ON `pedidos` FOR EACH ROW BEGIN
	UPDATE produtos
	SET estoque = estoque - NEW.quantidade
	WHERE id = NEW.id_produtos;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger producao.trg_produtos_atualizar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trg_produtos_atualizar` BEFORE UPDATE ON `produtos` FOR EACH ROW BEGIN
	INSERT INTO tmp_historico_produtos(
	produto_id,
	nome_antigo, 
	preço_antigo,
	estoque_antigo,
	usuario_alteracao
	) VALUES (
		OLD.id,
		OLD.nome,
		OLD.valor,
		OLD.estoque,
		USER()
	);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `view_clientes_com_mais_compras`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_clientes_com_mais_compras` AS select `c`.`nome` AS `nome`,count(`p`.`id`) AS `total_compras` from (`pedidos` `p` join `clientes` `c` on((`c`.`id` = `p`.`id_clientes`))) group by `c`.`id` order by `total_compras` desc;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
