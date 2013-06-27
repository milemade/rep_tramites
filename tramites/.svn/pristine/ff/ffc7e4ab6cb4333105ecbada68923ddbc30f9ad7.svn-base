-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 27-06-2012 a las 10:39:59
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `tramites`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_menu`
-- 

DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `axm_id` int(11) NOT NULL auto_increment,
  `axm_nombre_tabla` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axm_descripcion` varchar(180) collate utf8_spanish_ci NOT NULL default '',
  `axm_texto` text collate utf8_spanish_ci NOT NULL,
  `axm_submenu` varchar(60) collate utf8_spanish_ci NOT NULL,
  `axm_camposub` varchar(50) collate utf8_spanish_ci NOT NULL,
  `axm_estado` varchar(100) collate utf8_spanish_ci NOT NULL,
  `axm_usu_id` varchar(15) collate utf8_spanish_ci NOT NULL,
  `axm_fechahora` varchar(30) collate utf8_spanish_ci NOT NULL,
  `axm_equipo` varchar(60) collate utf8_spanish_ci NOT NULL,
  `axm_ban` int(1) NOT NULL,
  PRIMARY KEY  (`axm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=17 ;

-- 
-- Volcar la base de datos para la tabla `admin_menu`
-- 

INSERT INTO `admin_menu` VALUES (1, 'tramite_categoria', 'Categor&iacute;a Tr&aacute;mite', 'Las Categorias trámite se refieren a la intención o finalidad del trámite', '', '', 'cxt_estado', 'cxt_usu_id', 'cxt_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (2, 'tramite_tipo_origen', 'Tipo Origen del Tr&aacute;mite', 'Indica el origen del tr&aacute;mite a diligenciar', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (3, 'tramite_tipo', 'Tipo Tr&aacute;mite', 'Son los tipos de trámite que se manejan en la empresa para llevarles un seguimiento adecuado.', 'tramite_pasos', 'pxt_txt_id', 'txt_estado', 'txt_usu_id', 'txt_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (4, 'tramite_pasos', 'Pasos Tramite', 'Pasos o fases del trámite.', '', 'pxt_txt_id', 'pxt_estado', 'pxt_usu_id', 'pxt_fechahora', '', 1);
INSERT INTO `admin_menu` VALUES (5, 'empresa_cliente', 'Empresas Cliente', 'Son las Empresas Cliente ', 'dep_empresa', 'dxe_emp_id', 'exc_estado', 'exc_usu_id', 'exc_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (6, 'tramite_estado', 'Estado del tr&aacute;mite', 'Se definen los estados de los trámites que diligencia la empresa.', '', '', 'ext_estado', 'ext_usu_id', 'ext_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (8, 'departamento', 'Departamentos Pa&iacute;s', 'La Constitución de 1991 establece a Colombia como una República Unitaria que se divide administrativa y políticamente en 33 divisiones: 32 departamentos, los cuales son gobernados desde sus respectivas ciudades capitales, y un único Distrito Capital (Bogotá). Los departamentos forman regiones geográficas, culturales y económicas. Departamentos del país segun el DANE.', 'ciudad', 'ciu_dep_id', 'dep_estado', 'dep_usu_id', 'dep_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (9, 'ciudad', 'Ciudad', 'Una ciudad es un área urbana con alta densidad de población en la que predominan fundamentalmente la industria y los servicios. El término ciudad suele utilizarse para designar una determinada entidad político-administrativa urbanizada. ', '', '', 'ciu_estado', 'ciu_usu_id', 'ciu_fechahora', '', 1);
INSERT INTO `admin_menu` VALUES (10, 'dep_empresa', 'Departamentos Empresa', 'Las áreas de actividad o Departamentos, están en relación directa con las funciones básicas que realiza la empresa a fin de lograr sus objetivos. ', 'cargos', 'car_dxe_id', 'dxe_estado', 'dxe_usu_id', 'dxe_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (11, 'empresas_grupo', 'Grupo de Empresas', 'En Colombia el segmento empresarial esta clasificado en micro, pequeñas, medianas y grandes empresas, esta clasificación está reglamentada en la Ley 590 de 2000 conocida como la Ley Mipymes y sus modificaciones (Ley 905 de 2004).', '', '', 'gru_estado', 'gru_usu_id', 'gru_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (12, 'cargos', 'Cargos', 'El conjunto de todas las tareas que debe realizar un trabajador. Un CARGO puede consistir en una o varias tareas, entendiendo como tarea una unidad de trabajo "organizada discretamente" . ', '', '', 'car_estado', 'car_usu_id', 'car_fechahora', '', 1);
INSERT INTO `admin_menu` VALUES (13, 'empresa_sedes', 'Sedes de las Empresa', '', '', '', 'sede_estado', 'sede_usu_id', 'sede_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (14, 'tipo_empresacliente', 'Tipo Empresa', '', 'empresa_cliente', 'exc_txe_id', 'txe_estado', 'txe_fechahora', 'txe_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (15, 'tipo_documento', 'Tipo Documento', 'Son los Tipos de documento que pueden ser enviados o recibidos', '', '', 'txd_estado', 'txd_usu_id', 'txd_fechahora', '', 0);
INSERT INTO `admin_menu` VALUES (16, 'empresa', 'Empresas Propias', 'Empresas del Grupo Alianza', '', '', 'emp_estado', 'emp_usu_id', 'emp_fechahora', 'emp_equipo', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_perfiles`
-- 

DROP TABLE IF EXISTS `admin_perfiles`;
CREATE TABLE `admin_perfiles` (
  `axp_id` int(11) NOT NULL auto_increment,
  `axp_nombre` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axp_editable` enum('S','N') collate utf8_spanish_ci NOT NULL default 'S',
  PRIMARY KEY  (`axp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `admin_perfiles`
-- 

INSERT INTO `admin_perfiles` VALUES (1, 'SuperAdministrador', 'S');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_permisos`
-- 

DROP TABLE IF EXISTS `admin_permisos`;
CREATE TABLE `admin_permisos` (
  `aper_id` int(11) NOT NULL auto_increment,
  `aper_axp_id` int(11) NOT NULL default '0',
  `aper_nombre_tabla` varchar(150) collate utf8_spanish_ci NOT NULL default '',
  `aper_txper_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=29 ;

-- 
-- Volcar la base de datos para la tabla `admin_permisos`
-- 

INSERT INTO `admin_permisos` VALUES (1, 1, 'tramite_categoria', 1);
INSERT INTO `admin_permisos` VALUES (2, 1, 'tramite_categoria', 3);
INSERT INTO `admin_permisos` VALUES (3, 1, 'tramite_categoria', 6);
INSERT INTO `admin_permisos` VALUES (4, 1, 'tramite_tipo_origen', 1);
INSERT INTO `admin_permisos` VALUES (5, 1, 'tramite_tipo_origen', 3);
INSERT INTO `admin_permisos` VALUES (6, 1, 'tramite_tipo_origen', 6);
INSERT INTO `admin_permisos` VALUES (7, 1, 'tramite_tipo', 1);
INSERT INTO `admin_permisos` VALUES (8, 1, 'tramite_tipo', 3);
INSERT INTO `admin_permisos` VALUES (9, 1, 'tramite_tipo', 6);
INSERT INTO `admin_permisos` VALUES (10, 1, 'tramite_pasos', 1);
INSERT INTO `admin_permisos` VALUES (11, 1, 'tramite_pasos', 3);
INSERT INTO `admin_permisos` VALUES (12, 1, 'tramite_pasos', 6);
INSERT INTO `admin_permisos` VALUES (13, 1, 'empresa_cliente', 1);
INSERT INTO `admin_permisos` VALUES (14, 1, 'empresa_cliente', 3);
INSERT INTO `admin_permisos` VALUES (15, 1, 'empresa_cliente', 6);
INSERT INTO `admin_permisos` VALUES (16, 1, 'tramite_estado', 1);
INSERT INTO `admin_permisos` VALUES (17, 1, 'tramite_estado', 3);
INSERT INTO `admin_permisos` VALUES (18, 1, 'tramite_estado', 6);
INSERT INTO `admin_permisos` VALUES (26, 1, 'tipo_empresacliente', 1);
INSERT INTO `admin_permisos` VALUES (20, 1, 'departamento', 1);
INSERT INTO `admin_permisos` VALUES (21, 1, 'ciudad', 1);
INSERT INTO `admin_permisos` VALUES (22, 1, 'dep_empresa', 1);
INSERT INTO `admin_permisos` VALUES (23, 1, 'empresas_grupo ', 1);
INSERT INTO `admin_permisos` VALUES (24, 1, 'cargos', 1);
INSERT INTO `admin_permisos` VALUES (28, 1, 'empresa', 3);
INSERT INTO `admin_permisos` VALUES (27, 1, 'tipo_documento', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_tablas`
-- 

DROP TABLE IF EXISTS `admin_tablas`;
CREATE TABLE `admin_tablas` (
  `axt_id` int(10) NOT NULL auto_increment,
  `axt_nombre_tabla` varchar(80) collate utf8_spanish_ci default '',
  `axt_nombre_campo` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axt_campo_es_id` int(1) NOT NULL default '0',
  `axt_tipo_campo` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axt_tabla_relacion` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axt_campo_relacion` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axt_campo_imprimir` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  `axt_txr_idioma` varchar(200) collate utf8_spanish_ci NOT NULL default '',
  `axt_campo_visual` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `axt_visualizar` varchar(5) collate utf8_spanish_ci NOT NULL default '',
  `axt_rotulo` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `axt_idi_id` int(10) NOT NULL default '1',
  `axt_txa_id` int(10) NOT NULL default '0',
  PRIMARY KEY  (`axt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=74 ;

-- 
-- Volcar la base de datos para la tabla `admin_tablas`
-- 

INSERT INTO `admin_tablas` VALUES (1, 'tramite_categoria', 'cxt_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (2, 'tramite_categoria', 'cxt_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Categoria', 1, 0);
INSERT INTO `admin_tablas` VALUES (3, 'tramite_categoria', 'cxt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Categoría', 1, 0);
INSERT INTO `admin_tablas` VALUES (4, 'tramite_tipo_origen ', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (5, 'tramite_tipo_origen ', 'txo_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Tipo Origen', 1, 0);
INSERT INTO `admin_tablas` VALUES (6, 'tramite_tipo_origen ', 'txo_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Tipo Origen', 1, 0);
INSERT INTO `admin_tablas` VALUES (7, 'tramite_tipo', ' txt_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (8, 'tramite_tipo', 'txt_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Tipo Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (9, 'tramite_tipo', 'txt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Tipo Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (66, 'empresa_cliente', 'exc_res_id', 0, 'select', '', '', '', '', '', '', 'Cargo', 1, 0);
INSERT INTO `admin_tablas` VALUES (63, 'tramite_pasos', 'pxt_txp_id', 0, 'select', 'tramite_prefijo ', 'txp_id', 'txp_descripcion', '', 'txp_estado', '', 'Ejecución del Paso', 1, 0);
INSERT INTO `admin_tablas` VALUES (16, 'tramite_pasos', 'pxt_uxt_id', 0, 'select', 'unidad_tiempo', 'uxt_id', 'uxt_nombre', '', 'uxt_estado', '', 'Unidad de Tiempo', 1, 0);
INSERT INTO `admin_tablas` VALUES (14, 'tramite_pasos', 'pxt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción del paso', 1, 0);
INSERT INTO `admin_tablas` VALUES (15, 'tramite_pasos', 'pxt_tmpolimite', 0, 'numero', '', '', '', '', '', '', 'Tiempo (Solo números)', 1, 0);
INSERT INTO `admin_tablas` VALUES (12, 'tramite_pasos', 'pxt_car_id', 0, 'select', 'cargos', 'car_id', 'car_nombre', '', 'car_estado', '', 'Departamento - Cargo', 0, 0);
INSERT INTO `admin_tablas` VALUES (17, 'empresa_cliente', 'exc_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (18, 'empresa_cliente', 'exc_txe_id', 0, 'select', 'tipo_empresacliente', 'txe_id', 'txe_nombre', '', 'txe_estado', 'SI', 'Tipo Empresa Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (19, 'empresa_cliente', 'exc_gru_id', 0, 'select', 'empresas_grupo', 'gru_id', 'gru_nombre', '', 'gru_estado', 'SI', 'Grupo Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (20, 'empresa_cliente', 'exc_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Empresa Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (21, 'empresa_cliente', 'exc_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (22, 'empresa_cliente', 'exc_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección de la Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (23, 'empresa_cliente', 'exc_fijo', 0, 'numero', '', '', '', '', '', '', 'Teléfono fijo', 1, 0);
INSERT INTO `admin_tablas` VALUES (24, 'empresa_cliente', 'exc_celular', 0, 'numero', '', '', '', '', '', '', 'Teléfono celular ', 1, 0);
INSERT INTO `admin_tablas` VALUES (25, 'tramite_estado', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (26, 'tramite_estado', 'ext_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Estado del Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (64, 'empresa_cliente', 'exc_cargo', 0, 'text', '', '', '', '', '', '', 'Cargo contacto', 1, 0);
INSERT INTO `admin_tablas` VALUES (30, 'departamento', 'dep_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (31, 'departamento', 'dep_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre', 1, 0);
INSERT INTO `admin_tablas` VALUES (32, 'departamento', 'dep_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción', 1, 0);
INSERT INTO `admin_tablas` VALUES (33, 'ciudad', 'ciu_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (34, 'ciudad', 'ciu_dep_id', 0, 'select', 'departamento', 'dep_id', 'dep_nombre', '', 'dep_estado', 'SI', 'Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (35, 'ciudad', 'ciu_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Ciudad', 1, 0);
INSERT INTO `admin_tablas` VALUES (36, 'dep_empresa', 'dxe_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (37, 'dep_empresa', 'dxe_emp_id', 0, 'select', 'empresa_cliente', 'exc_id', 'exc_nombre', '', 'exc_estado', 'SI', 'Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (38, 'dep_empresa', 'dxe_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Departamento Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (39, 'dep_empresa', 'dxe_siglas', 0, 'text', '', '', '', '', '', '', 'Siglas  Departamento Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (40, 'dep_empresa', 'dxe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Descripción', 1, 0);
INSERT INTO `admin_tablas` VALUES (41, 'empresas_grupo ', 'gru_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (42, 'empresas_grupo ', 'gru_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre', 1, 0);
INSERT INTO `admin_tablas` VALUES (46, 'cargos', 'car_dxe_id', 0, 'select', 'dep_empresa', 'dxe_id', 'dxe_nombre', '', 'dxe_estado', 'SI', 'Departamento Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (45, 'cargos', 'car_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (47, 'cargos', 'car_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Cargo', 1, 0);
INSERT INTO `admin_tablas` VALUES (48, 'cargos', 'car_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción del Cargo', 1, 0);
INSERT INTO `admin_tablas` VALUES (49, 'empresa_sedes', 'sede_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (50, 'empresa_sedes', 'sede_emp_id', 0, 'select', 'empresa', 'emp_ip', 'emp_nombre', '', 'emp_estado', 'SI', 'Nombre Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (51, 'empresa_sedes', 'sede_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre', 1, 0);
INSERT INTO `admin_tablas` VALUES (52, 'empresa_sedes', 'sede_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descrpción', 1, 0);
INSERT INTO `admin_tablas` VALUES (53, 'cargos', 'car_revisa_id', 0, 'select', 'cargos', 'car_id', 'car_nombre', '', 'car_estado', '', 'Cargo supervisor', 1, 0);
INSERT INTO `admin_tablas` VALUES (13, 'tramite_pasos', 'pxt_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre del Paso', 1, 0);
INSERT INTO `admin_tablas` VALUES (65, 'empresa_cliente', 'exc_contacto', 0, 'text', '', '', '', '', '', '', 'Nombre Contacto', 1, 0);
INSERT INTO `admin_tablas` VALUES (10, 'tramite_pasos', 'pxt_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (11, 'tramite_pasos', 'pxt_txt_id', 0, 'select', 'tramite_tipo', 'txt_id', 'txt_nombre', '', 'txt_estado', '', 'Tipo de Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (67, 'tipo_empresacliente', 'txe_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (68, 'tipo_empresacliente', 'txe_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Tipo Empresa ', 1, 0);
INSERT INTO `admin_tablas` VALUES (69, 'tipo_documento', 'txd_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (70, 'tipo_documento', 'txd_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Documento', 1, 0);
INSERT INTO `admin_tablas` VALUES (71, 'tipo_documento', 'txd_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Documento', 1, 0);
INSERT INTO `admin_tablas` VALUES (72, 'empresa', 'emp_id', 0, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (73, 'empresa', 'emp_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Empresa', 1, 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_tipo_archivo`
-- 

DROP TABLE IF EXISTS `admin_tipo_archivo`;
CREATE TABLE `admin_tipo_archivo` (
  `ati_id` int(11) NOT NULL auto_increment,
  `ati_nombre` varchar(50) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`ati_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `admin_tipo_archivo`
-- 

INSERT INTO `admin_tipo_archivo` VALUES (1, 'Imagen');
INSERT INTO `admin_tipo_archivo` VALUES (2, 'Documentos');
INSERT INTO `admin_tipo_archivo` VALUES (3, 'Archivo Plano');
INSERT INTO `admin_tipo_archivo` VALUES (4, 'SWF');
INSERT INTO `admin_tipo_archivo` VALUES (5, 'Downloads');
INSERT INTO `admin_tipo_archivo` VALUES (6, 'Videos');
INSERT INTO `admin_tipo_archivo` VALUES (7, 'Ropa');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_tipo_permisos`
-- 

DROP TABLE IF EXISTS `admin_tipo_permisos`;
CREATE TABLE `admin_tipo_permisos` (
  `txper_id` int(11) NOT NULL auto_increment,
  `txper_desc` varchar(80) collate utf8_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`txper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `admin_tipo_permisos`
-- 

INSERT INTO `admin_tipo_permisos` VALUES (1, 'Insertar');
INSERT INTO `admin_tipo_permisos` VALUES (2, 'Borrar Fisico');
INSERT INTO `admin_tipo_permisos` VALUES (3, 'Editar');
INSERT INTO `admin_tipo_permisos` VALUES (4, 'Buscar');
INSERT INTO `admin_tipo_permisos` VALUES (5, 'Exportar a Excel');
INSERT INTO `admin_tipo_permisos` VALUES (6, 'Borrar Logico');
INSERT INTO `admin_tipo_permisos` VALUES (7, 'Consultar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_usuarios`
-- 

DROP TABLE IF EXISTS `admin_usuarios`;
CREATE TABLE `admin_usuarios` (
  `axu_id` int(11) NOT NULL auto_increment,
  `axu_documento` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `axu_nombre` varchar(250) collate utf8_spanish_ci NOT NULL default '',
  `axu_login` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `axu_clave` varchar(100) collate utf8_spanish_ci NOT NULL default '',
  `axu_txp_id` int(10) NOT NULL default '0',
  `axu_mail` varchar(200) collate utf8_spanish_ci NOT NULL default '',
  `axu_fxa_id` int(10) NOT NULL default '0',
  `axu_dir` varchar(200) collate utf8_spanish_ci NOT NULL default '',
  `axu_tel` varchar(200) collate utf8_spanish_ci NOT NULL default '',
  PRIMARY KEY  (`axu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci PACK_KEYS=0 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `admin_usuarios`
-- 

INSERT INTO `admin_usuarios` VALUES (1, '', 'SuperAdministrador', 'cirko', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 1, '', 0, '', '');
