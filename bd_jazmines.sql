SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `jazmines`.`rol`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT ,
  `nombre_rol` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_rol`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`usuario` (
  `cc_usuario` INT NOT NULL ,
  `nombre_usuario` VARCHAR(45) NULL ,
  `apellido_Usuario` VARCHAR(45) NULL ,
  `pass_usuario` INT NULL ,
  `telefono_usuario` VARCHAR(45) NULL ,
  `direccion_usuario` VARCHAR(45) NULL ,
  `correo_usuario` VARCHAR(45) NULL ,
  `ROLES_Id_ROL` INT NOT NULL ,
  INDEX `fk_USUARIO_ROLES_idx` (`ROLES_Id_ROL` ASC) ,
  PRIMARY KEY (`cc_usuario`) ,
  CONSTRAINT `fk_USUARIO_ROLES`
    FOREIGN KEY (`ROLES_Id_ROL` )
    REFERENCES `jazmines`.`rol` (`id_rol` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
DEFAULT CHARACTER SET = ujis;


-- -----------------------------------------------------
-- Table `jazmines`.`planes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`planes` (
  `id_Plan` INT NOT NULL ,
  `nombre_plan` VARCHAR(45) NULL ,
  `cobertura_plan` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_Plan`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`solicitud`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`solicitud` (
  `id_usuariosolicitud` INT NOT NULL AUTO_INCREMENT ,
  `fecha_solicitud` DATE NULL ,
  `hora_solicitud` TIME NULL ,
  `usuario` INT NOT NULL ,
  PRIMARY KEY (`id_usuariosolicitud`) ,
  INDEX `fk_USUARIO_SOLICITUD_USUARIO1_idx` (`usuario` ASC) ,
  CONSTRAINT `fk_USUARIO_SOLICITUD_USUARIO1`
    FOREIGN KEY (`usuario` )
    REFERENCES `jazmines`.`usuario` (`cc_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`contrato`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`contrato` (
  `id_usuario_contrato` INT NOT NULL AUTO_INCREMENT ,
  `oferta` INT NULL ,
  `fecha_expiracion` DATE NULL ,
  `PLANES_id_Plan` INT NOT NULL ,
  `USUARIO_cc_usuario` INT NOT NULL ,
  INDEX `fk_USUARIO_CONTRATO_PLANES1_idx` (`PLANES_id_Plan` ASC) ,
  INDEX `fk_USUARIO_CONTRATO_USUARIO1_idx` (`USUARIO_cc_usuario` ASC) ,
  PRIMARY KEY (`id_usuario_contrato`) ,
  CONSTRAINT `fk_USUARIO_CONTRATO_PLANES1`
    FOREIGN KEY (`PLANES_id_Plan` )
    REFERENCES `jazmines`.`planes` (`id_Plan` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_USUARIO_CONTRATO_USUARIO1`
    FOREIGN KEY (`USUARIO_cc_usuario` )
    REFERENCES `jazmines`.`usuario` (`cc_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`eventos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`eventos` (
  `id_eventos` INT NOT NULL AUTO_INCREMENT ,
  `nombre_evento` VARCHAR(45) NULL ,
  `lugar_evento` VARCHAR(45) NULL ,
  `fechainicio_evento` DATE NULL ,
  `fechafin_evento` DATE NULL ,
  `USUARIO_cc_usuario` INT NOT NULL ,
  PRIMARY KEY (`id_eventos`) ,
  INDEX `fk_EVENTOS_USUARIO1_idx` (`USUARIO_cc_usuario` ASC) ,
  CONSTRAINT `fk_EVENTOS_USUARIO1`
    FOREIGN KEY (`USUARIO_cc_usuario` )
    REFERENCES `jazmines`.`usuario` (`cc_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`obituarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`obituarios` (
  `id_obituarios` INT NOT NULL ,
  `nombre_obituarios` VARCHAR(45) NULL ,
  `lugarvelacion_obituarios` VARCHAR(45) NULL ,
  `lugarexequias_obituarios` VARCHAR(45) NULL ,
  `lugardescanso_obituarios` VARCHAR(45) NULL ,
  `fechavelacion_obituarios` DATE NULL ,
  `fechaexequias_obituarios` DATE NULL ,
  `horavelacion_obituarios` TIME NULL ,
  `horaexequias_obituarios` TIME NULL ,
  `horadescanso_obituarios` TIME NULL ,
  `USUARIO_cc_usuario` INT NOT NULL ,
  PRIMARY KEY (`id_obituarios`) ,
  INDEX `fk_OBITIUARIOS_USUARIO1_idx` (`USUARIO_cc_usuario` ASC) ,
  CONSTRAINT `fk_OBITIUARIOS_USUARIO1`
    FOREIGN KEY (`USUARIO_cc_usuario` )
    REFERENCES `jazmines`.`usuario` (`cc_usuario` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`tipocomunicacion`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`tipocomunicacion` (
  `idtipocomunicacion` INT NOT NULL AUTO_INCREMENT ,
  `nombre_tipo` VARCHAR(45) NULL ,
  PRIMARY KEY (`idtipocomunicacion`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`comunicaciones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`comunicaciones` (
  `idcomunicaciones` INT NOT NULL AUTO_INCREMENT ,
  `nombreusuario_comunicaciones` VARCHAR(45) NULL ,
  `correo_comunicaciones` VARCHAR(45) NULL ,
  `telefono_comunicaciones` INT NULL ,
  `mensaje_comunicaciones` VARCHAR(1000) NULL ,
  `TIPO_COMUNICACION_idTIPO_COMUNICACION` INT NOT NULL ,
  PRIMARY KEY (`idcomunicaciones`) ,
  INDEX `fk_COMUNICACIONES_TIPO_COMUNICACION1_idx` (`TIPO_COMUNICACION_idTIPO_COMUNICACION` ASC) ,
  CONSTRAINT `fk_COMUNICACIONES_TIPO_COMUNICACION1`
    FOREIGN KEY (`TIPO_COMUNICACION_idTIPO_COMUNICACION` )
    REFERENCES `jazmines`.`tipocomunicacion` (`idtipocomunicacion` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jazmines`.`usuarios nuevos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `jazmines`.`usuarios nuevos` (
  `idusuario_nuevo` INT NOT NULL AUTO_INCREMENT ,
  `nombrecompleto_usuarionuevo` VARCHAR(45) NULL ,
  `telefono_usuarionuevo` VARCHAR(45) NULL ,
  `correo_usuarionuevo` VARCHAR(45) NULL ,
  `fecha_usuarionuevo` VARCHAR(45) NULL ,
  `hora_usuarionuevo` TIME NULL ,
  PRIMARY KEY (`idusuario_nuevo`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
