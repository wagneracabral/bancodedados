CREATE database aula4;

CREATE TABLE IF NOT EXISTS `aula4`.`curso` (
  `nome` VARCHAR(45) NOT NULL,
  `carga Horaria` SMALLINT UNSIGNED NOT NULL,
  `idCurso` INT NOT NULL,
  PRIMARY KEY (`idCurso`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `aula4`.`pessoa` (
  `nome` INT NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Curso_idCurso` INT NOT NULL,
  `idPessoa` INT NOT NULL,
  INDEX `fk_idPessoa INT_Curso_idx` (`Curso_idCurso` ASC) VISIBLE,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_idPessoa INT_Curso`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `aula4`.`curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from aula4.curso;

select * from aula4.pessoa;

INSERT INTO `aula4`.`pessoa` (`nome`, `telefone`, `email`, `Curso_idCurso`, `idPessoa`) VALUES ('Fabio', '666666', 'fabio@gmail', '1', '3');

CREATE TABLE IF NOT EXISTS `aula4`.`pessoa` (
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `Curso_idCurso` INT NOT NULL,
  `idPessoa` INT NOT NULL,
  INDEX `fk_idPessoa INT_Curso_idx` (`Curso_idCurso` ASC) VISIBLE,
  PRIMARY KEY (`idPessoa`),
  CONSTRAINT `fk_idPessoa INT_Curso`
    FOREIGN KEY (`Curso_idCurso`)
    REFERENCES `aula4`.`curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;