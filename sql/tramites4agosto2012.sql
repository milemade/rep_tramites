-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 04-08-2012 a las 09:48:54
-- Versión del servidor: 5.0.45
-- Versión de PHP: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `tramites`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `activo`
-- 

DROP TABLE IF EXISTS `activo`;
CREATE TABLE `activo` (
  `act_id` int(11) NOT NULL auto_increment,
  `act_nombre` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `act_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`act_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `activo`
-- 

INSERT INTO `activo` VALUES (1, 'ACTIVO', 1);
INSERT INTO `activo` VALUES (2, 'INACTIVO', 1);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=39 ;

-- 
-- Volcar la base de datos para la tabla `admin_menu`
-- 

INSERT INTO `admin_menu` VALUES (32, 'tramite_tipo_origen', 'Tipo Origen Tramite', 'Fuente u origen del tramite', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0);
INSERT INTO `admin_menu` VALUES (31, 'tramite_frecuencia', 'Frecuencia Tramites', 'Periodo que se repite un tipo de tramite', '', '', 'txf_estado', 'txf_usu_id', 'txf_fechahora', 'txf_equipo', 0);
INSERT INTO `admin_menu` VALUES (30, 'empresas_grupo', 'TamaÑo Empresas', 'Clasificación Empresas Cliente para su administración', '', '', 'gru_estado', 'gru_usu_id', 'gru_fechahora', 'gru_equipo', 0);
INSERT INTO `admin_menu` VALUES (28, 'tipo_documento', 'Tipo Documento', 'Tipo de Documentos que maneja  un trámite', '', '', 'txd_estado', 'txd_usu_id', 'txd_fechahora', 'txd_equipo', 0);
INSERT INTO `admin_menu` VALUES (25, 'tramite_pasos', 'Etapas del tramite', 'Pasos o etapas de la ejecución del trámite', '', '', 'pxt_estado', 'pxt_usu_id', 'pxt_fechahora', 'pxt_equipo', 1);
INSERT INTO `admin_menu` VALUES (26, 'tramite_tipo_origen', 'Origen del Tipo Trámite', 'Origen del trámite (Interno, Externo)', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0);
INSERT INTO `admin_menu` VALUES (27, 'tramite_estado', 'Estado del trámite', 'Son los diferentes estados de cada étapa del trámite.', '', '', 'ext_estado', 'ext_usu_id', 'ext_fechahora', 'ext_equipo', 0);
INSERT INTO `admin_menu` VALUES (24, 'tramite_tipo', 'Tipo Tramite', 'Son las Clases de los trámites que maneja la empresa.', 'tramite_pasos', 'pxt_txt_id', 'txt_estado', 'txt_usu_id', 'txt_fechahora', 'txt_equipo', 0);
INSERT INTO `admin_menu` VALUES (22, 'empresa_cliente', 'Empresas Cliente', 'Configuración de las Empresas Clientes del Grupo Empresarial Alianza', '', '', 'exc_estado', 'exc_usu_id', 'exc_fechahora', 'exc_equipo', 0);
INSERT INTO `admin_menu` VALUES (23, 'empresa_sedes', 'Sedes Grupo Empresarial', 'Sedes del Grupo Alianza', 'dep_empresa', 'dxe_sede_id', 'sede_estado', 'sede_usu_id', 'sede_fechahora', 'sede_equipo', 1);
INSERT INTO `admin_menu` VALUES (19, 'departamento', 'Departamentos Colombia', 'Departamentos del país', 'ciudad', 'ciu_dep_id', 'dep_estado', 'dep_usu_id', 'dep_fechahora', 'dep_equipo', 0);
INSERT INTO `admin_menu` VALUES (20, 'ciudad', 'Ciudades', 'Ciudades de los departamentos del país', '', '', 'ciu_estado', 'ciu_usu_id', 'ciu_fechahora', 'ciu_equipo', 1);
INSERT INTO `admin_menu` VALUES (21, 'tipo_empresacliente', 'Tipo Empresa Cliente', 'Clasificación de las empresas cliente', 'empresa_cliente', 'exc_txe_id', 'txe_estado', 'txe_usu_id', 'txe_fechahora', 'txe_equipo', 0);
INSERT INTO `admin_menu` VALUES (18, 'cargos', 'Cargos', 'Son los cargos de los empleados del Grupo Empresarial Alianza', '', '', 'car_estado', 'car_usu_id', 'car_fechahora', 'car_equipo', 1);
INSERT INTO `admin_menu` VALUES (17, 'dep_empresa', 'Departamentos Grupo', 'Departamentos de las sedes del Grupo Empresarial Alianza', 'cargos', 'car_dxe_id', 'dxe_estado', 'dxe_usu_id', 'dxe_fechahora', 'dxe_equipo', 1);
INSERT INTO `admin_menu` VALUES (1, 'empresa', 'Grupo Empresarial Alianza', 'Grupo Alianza', 'empresa_sedes', 'sede_emp_id', 'emp_estado', 'emp_usu_id', 'emp_fechahora', 'emp_equipo', 0);
INSERT INTO `admin_menu` VALUES (33, 'alianza_emp', 'Empresas Propias', 'Son las Empresas del grupo Alianza para el manejo de tramites.', 'alianza_sedes', 'axs_exa_id', 'exa_estado', 'exa_usu_id', 'exa_fechahora', 'exa_equipo', 0);
INSERT INTO `admin_menu` VALUES (34, 'alianza_sedes', 'Sedes Empresas Propias', 'Sedes de las Empresas del Grupo Alianza para el manejo de tramites', 'alianza_dep', 'axe_axs_id', 'axs_estado', 'axs_usu_id', 'axs_fechahora', 'axs_equipo', 1);
INSERT INTO `admin_menu` VALUES (35, 'depxdepal', 'Conf. Departamentos', 'Configuración Departamentos Grupo Empresarial Alianza con los Departamentos de las Empresas Propias para manejo de los trámites', '', '', 'dxd_estado', 'dxd_usu_id', 'dxd_fechahora', 'dxd_equipo', 0);
INSERT INTO `admin_menu` VALUES (36, 'alianza_dep', 'Deptos Empresas Propias', 'Son los Departamentos de las Empresas de Alianza', '', '', 'axe_estado', 'axe_usu_id', 'axe_fechahora', 'axe_equipo', 1);
INSERT INTO `admin_menu` VALUES (38, 'empresascliente_grupo', 'Grupo Empresas Cliente', 'Es la forma como se agrupan varias empresas del mismo tipo que tienen un funcionamiento centralizado.', 'empresa_cliente', 'exc_exg_id', 'exg_estado', 'exg_usu_id', 'exg_fechahora', 'exg_equipo', 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=88 ;

-- 
-- Volcar la base de datos para la tabla `admin_permisos`
-- 

INSERT INTO `admin_permisos` VALUES (49, 1, 'empresa_sedes', 3);
INSERT INTO `admin_permisos` VALUES (48, 1, 'empresa_sedes', 1);
INSERT INTO `admin_permisos` VALUES (47, 1, 'empresa_cliente', 6);
INSERT INTO `admin_permisos` VALUES (46, 1, 'empresa_cliente', 3);
INSERT INTO `admin_permisos` VALUES (45, 1, 'empresa_cliente', 1);
INSERT INTO `admin_permisos` VALUES (44, 1, 'tipo_empresacliente', 6);
INSERT INTO `admin_permisos` VALUES (43, 1, 'tipo_empresacliente', 3);
INSERT INTO `admin_permisos` VALUES (42, 1, 'tipo_empresacliente', 1);
INSERT INTO `admin_permisos` VALUES (41, 1, 'ciudad', 6);
INSERT INTO `admin_permisos` VALUES (40, 1, 'ciudad', 3);
INSERT INTO `admin_permisos` VALUES (39, 1, 'ciudad', 1);
INSERT INTO `admin_permisos` VALUES (38, 1, 'departamento', 6);
INSERT INTO `admin_permisos` VALUES (37, 1, 'departamento', 3);
INSERT INTO `admin_permisos` VALUES (36, 1, 'departamento', 1);
INSERT INTO `admin_permisos` VALUES (35, 1, 'cargos', 6);
INSERT INTO `admin_permisos` VALUES (34, 1, 'cargos', 3);
INSERT INTO `admin_permisos` VALUES (32, 1, 'dep_empresa', 6);
INSERT INTO `admin_permisos` VALUES (31, 1, 'dep_empresa', 3);
INSERT INTO `admin_permisos` VALUES (30, 1, 'dep_empresa', 1);
INSERT INTO `admin_permisos` VALUES (1, 1, 'empresa', 3);
INSERT INTO `admin_permisos` VALUES (33, 1, 'cargos', 1);
INSERT INTO `admin_permisos` VALUES (74, 1, 'depxdepal', 1);
INSERT INTO `admin_permisos` VALUES (50, 1, 'empresa_sedes', 6);
INSERT INTO `admin_permisos` VALUES (51, 1, 'tramite_tipo', 1);
INSERT INTO `admin_permisos` VALUES (52, 1, 'tramite_tipo', 3);
INSERT INTO `admin_permisos` VALUES (53, 1, 'tramite_tipo', 6);
INSERT INTO `admin_permisos` VALUES (54, 1, 'tramite_pasos', 1);
INSERT INTO `admin_permisos` VALUES (55, 1, 'tramite_pasos', 3);
INSERT INTO `admin_permisos` VALUES (56, 1, 'tramite_pasos', 6);
INSERT INTO `admin_permisos` VALUES (57, 1, 'tramite_tipo_origen ', 3);
INSERT INTO `admin_permisos` VALUES (58, 1, 'tramite_estado', 3);
INSERT INTO `admin_permisos` VALUES (59, 1, 'tipo_documento', 1);
INSERT INTO `admin_permisos` VALUES (60, 1, 'tipo_documento', 3);
INSERT INTO `admin_permisos` VALUES (61, 1, 'tipo_documento', 6);
INSERT INTO `admin_permisos` VALUES (67, 1, 'tramite_tipo_origen', 1);
INSERT INTO `admin_permisos` VALUES (66, 1, 'tramite_frecuencia', 3);
INSERT INTO `admin_permisos` VALUES (65, 1, 'empresas_grupo', 3);
INSERT INTO `admin_permisos` VALUES (68, 1, 'tramite_tipo_origen', 3);
INSERT INTO `admin_permisos` VALUES (69, 1, 'tramite_tipo_origen', 6);
INSERT INTO `admin_permisos` VALUES (70, 1, 'alianza_emp', 3);
INSERT INTO `admin_permisos` VALUES (71, 1, 'alianza_sedes', 1);
INSERT INTO `admin_permisos` VALUES (72, 1, 'alianza_sedes', 3);
INSERT INTO `admin_permisos` VALUES (73, 1, 'alianza_sedes', 6);
INSERT INTO `admin_permisos` VALUES (75, 1, 'depxdepal', 3);
INSERT INTO `admin_permisos` VALUES (76, 1, 'depxdepal', 6);
INSERT INTO `admin_permisos` VALUES (77, 1, 'alianza_dep', 1);
INSERT INTO `admin_permisos` VALUES (78, 1, 'alianza_dep', 3);
INSERT INTO `admin_permisos` VALUES (79, 1, 'alianza_dep', 6);
INSERT INTO `admin_permisos` VALUES (86, 1, 'empresascliente_grupo', 3);
INSERT INTO `admin_permisos` VALUES (85, 1, 'empresascliente_grupo', 1);
INSERT INTO `admin_permisos` VALUES (84, 1, 'alianza_emp', 1);
INSERT INTO `admin_permisos` VALUES (87, 1, 'empresascliente_grupo', 6);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=181 ;

-- 
-- Volcar la base de datos para la tabla `admin_tablas`
-- 

INSERT INTO `admin_tablas` VALUES (176, 'empresa_cliente', 'exc_fijo', 0, 'numero', '', '', '', '', '', '', 'Teléfono fijo (Solo Números)', 1, 0);
INSERT INTO `admin_tablas` VALUES (175, 'empresa_cliente', 'exc_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (174, 'empresa_cliente', 'exc_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (173, 'empresa_cliente', 'exc_gru_id', 0, 'select', 'empresas_grupo ', 'gru_id', 'gru_nombre', '', 'gru_estado', '', 'Grupo Empresas Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (113, 'tipo_documento', 'txd_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (112, 'tramite_estado', 'ext_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Estado', 1, 0);
INSERT INTO `admin_tablas` VALUES (108, 'tramite_tipo_origen ', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (111, 'tramite_estado', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (107, 'tramite_pasos', 'pxt_uxt_id', 0, 'selectt', 'unidad_tiempo', 'uxt_id', 'uxt_nombre', '', 'uxt_estado', '', 'Unidad de Tiempo', 1, 0);
INSERT INTO `admin_tablas` VALUES (106, 'tramite_pasos', 'pxt_tmpolimite', 0, 'required', '', '', '', '', '', '', 'Plazo máximo (Solo números)', 1, 0);
INSERT INTO `admin_tablas` VALUES (105, 'tramite_pasos', 'pxt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (103, 'tramite_pasos', 'pxt_txp_id', 0, 'selectt', 'tramite_prefijo', 'txp_id', 'txp_nombre', '', 'txp_estado', '', 'Tiempo para realizar Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (102, 'tramite_pasos', 'pxt_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Etapa del Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (101, 'tramite_pasos', 'pxt_txt_id', 0, 'select', 'tramite_tipo', 'txt_id', 'txt_nombre', '', 'txt_estado', 'SI', 'Tipo de Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (99, 'tramite_tipo', 'txt_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (98, 'tramite_tipo', 'txt_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (97, 'empresa_sedes', 'sede_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Sede', 1, 0);
INSERT INTO `admin_tablas` VALUES (96, 'empresa_sedes', 'sede_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede', 1, 0);
INSERT INTO `admin_tablas` VALUES (95, 'empresa_sedes', 'sede_emp_id', 0, 'select', 'empresa', 'emp_id', 'emp_nombre', '', 'emp_estado', 'SI', 'Nombre Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (94, 'empresa_sedes', 'sede_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (172, 'empresa_cliente', 'exc_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (171, 'empresa_cliente', 'exc_txe_id', 0, 'select', 'tipo_empresacliente', 'txe_id', 'txe_nombre', '', 'txe_estado', 'SI', 'Tipo Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (89, 'tipo_empresacliente', 'txe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Tipo Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (86, 'ciudad', 'ciu_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Ciudad', 1, 0);
INSERT INTO `admin_tablas` VALUES (85, 'ciudad', 'ciu_dep_id', 0, 'select', 'departamento', 'dep_id', 'dep_nombre', '', 'dep_estado', 'SI', 'Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (84, 'ciudad', 'ciu_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (83, 'departamento', 'dep_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (81, 'cargos', 'car_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Cargo', 1, 0);
INSERT INTO `admin_tablas` VALUES (82, 'departamento', 'dep_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (170, 'empresa_cliente', 'exc_exg_id', 0, 'select', 'empresascliente_grupo', 'exg_id', 'exg_nombre', '', 'exg_estado', 'SI', 'Grupo Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (80, 'cargos', 'car_dxe_id', 0, 'depto', '', '', '', '', '', '', 'Departamento Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (79, 'cargos', 'car_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (78, 'dep_empresa', 'dxe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (76, 'dep_empresa', 'dxe_sede_id', 0, 'select', 'v_empsede', 'sede_id', 'sede_nombre', '', 'sede_estado', 'SI', 'Empresa - Sede', 1, 0);
INSERT INTO `admin_tablas` VALUES (74, 'empresa', 'emp_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (75, 'dep_empresa', 'dxe_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (115, 'tipo_documento', 'txd_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Tipo Documento', 1, 0);
INSERT INTO `admin_tablas` VALUES (114, 'tipo_documento', 'txd_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Documento', 1, 0);
INSERT INTO `admin_tablas` VALUES (104, 'tramite_pasos', 'pxt_car_id', 0, 'cargos', 'v_cargos', 'car_id', 'car_nombre', '', 'car_estado', '', 'Cargo Responsable', 1, 0);
INSERT INTO `admin_tablas` VALUES (100, 'tramite_pasos', 'pxt_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (88, 'tipo_empresacliente', 'txe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (87, 'tipo_empresacliente', 'txe_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (77, 'dep_empresa', 'dxe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (1, 'empresa', 'emp_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (2, 'empresa', 'emp_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Grupo', 1, 0);
INSERT INTO `admin_tablas` VALUES (169, 'empresa_cliente', 'exc_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (125, 'cargos', 'car_revisa_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Lider', 1, 0);
INSERT INTO `admin_tablas` VALUES (126, 'cargos', 'car_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones del Cargo', 1, 0);
INSERT INTO `admin_tablas` VALUES (128, 'empresas_grupo', 'gru_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (129, 'empresas_grupo', 'gru_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Tamaño', 1, 0);
INSERT INTO `admin_tablas` VALUES (130, 'empresas_grupo', 'gru_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Grupo', 1, 0);
INSERT INTO `admin_tablas` VALUES (131, 'tramite_frecuencia', 'txf_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (132, 'tramite_frecuencia', 'txf_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre frecuencia', 1, 0);
INSERT INTO `admin_tablas` VALUES (133, 'tramite_frecuencia', 'txf_dias', 0, 'required', '', '', '', '', '', '', 'Tiempo en Dias', 1, 0);
INSERT INTO `admin_tablas` VALUES (134, 'tramite_tipo', 'txt_txf_id', 0, 'select', 'tramite_frecuencia', 'txf_id', 'txf_nombre', '', 'txf_estado', '', 'Frecuencia del Tipo de Tramite', 1, 0);
INSERT INTO `admin_tablas` VALUES (135, 'empresa', 'emp_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (136, 'empresa', 'emp_telefono', 0, 'numero', '', '', '', '', '', '', 'Telefono Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (137, 'tramite_tipo', 'txt_fechaini', 0, 'fechacalendario', '', '', '', '', '', '', 'Fecha Inicio Trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (138, 'tramite_tipo', 'txt_fechafin', 0, 'fechacalendario', '', '', '', '', '', '', 'Fecha final trámite', 1, 0);
INSERT INTO `admin_tablas` VALUES (139, 'tramite_tipo', 'txt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Tramite', 1, 0);
INSERT INTO `admin_tablas` VALUES (140, 'empresa', 'emp_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa', 1, 0);
INSERT INTO `admin_tablas` VALUES (142, 'ciudad', 'ciu_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Ciudad', 1, 0);
INSERT INTO `admin_tablas` VALUES (143, 'departamento', 'dep_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Departamento', 1, 0);
INSERT INTO `admin_tablas` VALUES (144, 'tramite_tipo_origen', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (145, 'tramite_tipo_origen', 'txo_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Origen', 1, 0);
INSERT INTO `admin_tablas` VALUES (146, 'tramite_tipo_origen', 'txo_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Tipo Origen', 1, 0);
INSERT INTO `admin_tablas` VALUES (147, 'alianza_emp', 'exa_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (148, 'alianza_emp', 'exa_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (149, 'alianza_emp', 'exa_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (150, 'alianza_emp', 'exa_direccion', 0, 'text', '', '', '', '', '', '', 'Direccion Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (151, 'alianza_emp', 'exa_telefono', 0, 'text', '', '', '', '', '', '', 'Telefono Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (152, 'alianza_emp', 'exa_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (153, 'alianza_sedes', 'axs_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (154, 'alianza_sedes', 'axs_exa_id', 0, 'select', 'alianza_emp', 'exa_id', 'exa_nombre', '', 'exa_estado', 'SI', 'Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (155, 'alianza_sedes', 'axs_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (156, 'alianza_sedes', 'axs_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Sede Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (157, 'depxdepal', 'dxd_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (158, 'depxdepal', 'dxd_dxe_id', 0, 'depto', '', '', '', '', '', 'SI', 'Departamento Grupo Empresarial', 1, 0);
INSERT INTO `admin_tablas` VALUES (159, 'depxdepal', 'dxd_axe_id', 0, 'alianza', '', '', '', '', '', '', 'Departamento Empresa Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (160, 'alianza_dep', 'axe_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (161, 'alianza_dep', 'axe_axs_id', 0, 'select', 'alianza_sedes', 'axs_id', 'axs_nombre', '', 'axs_estado', 'SI', 'Sede Empresa Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (162, 'alianza_dep', 'axe_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Dpto Empresa Grupo Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (163, 'alianza_dep', 'axe_siglas', 0, 'text', '', '', '', '', '', '', 'Siglas Dep Empresa Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (164, 'alianza_dep', 'axe_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones DEpto Empresa Alianza', 1, 0);
INSERT INTO `admin_tablas` VALUES (168, 'empresascliente_grupo', 'exg_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Grupo Empresas Cliente', 1, 0);
INSERT INTO `admin_tablas` VALUES (167, 'empresascliente_grupo', 'exg_id', 1, '', '', '', '', '', '', '', '', 1, 0);
INSERT INTO `admin_tablas` VALUES (177, 'empresa_cliente', 'exc_celular', 0, 'numero', '', '', '', '', '', '', 'Teléfono celular (Solo Números)', 1, 0);
INSERT INTO `admin_tablas` VALUES (178, 'empresa_cliente', 'exc_contacto', 0, 'required', '', '', '', '', '', '', 'Nombre persona contacto', 1, 0);
INSERT INTO `admin_tablas` VALUES (179, 'empresa_cliente', 'exc_mail', 0, 'email', '', '', '', '', '', '', 'E.mail contacto', 1, 0);
INSERT INTO `admin_tablas` VALUES (180, 'empresa_cliente', 'exc_res_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Responsable Alianza', 1, 0);

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

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alianza_dep`
-- 

DROP TABLE IF EXISTS `alianza_dep`;
CREATE TABLE `alianza_dep` (
  `axe_id` int(11) NOT NULL auto_increment,
  `axe_axs_id` int(11) NOT NULL,
  `axe_nombre` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `axe_siglas` varchar(5) collate utf8_spanish2_ci NOT NULL,
  `axe_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `axe_estado` int(1) NOT NULL default '1',
  `axe_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `axe_usu_id` bigint(20) NOT NULL,
  `axe_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`axe_id`,`axe_axs_id`),
  UNIQUE KEY `axe_siglas` (`axe_siglas`),
  UNIQUE KEY `axe_siglas_2` (`axe_siglas`),
  KEY `axe_sede_id` (`axe_axs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos Alinza para los Tramites' AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `alianza_dep`
-- 

INSERT INTO `alianza_dep` VALUES (1, 1, 'Depto sede1', 'DSU', 'hhhuuhuhu', 1, '2012-07-27 09:08:03', 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alianza_emp`
-- 

DROP TABLE IF EXISTS `alianza_emp`;
CREATE TABLE `alianza_emp` (
  `exa_id` int(11) NOT NULL auto_increment,
  `exa_axg_id` int(11) NOT NULL COMMENT 'Grpo de Empresas Alianza',
  `exa_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `exa_nit` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `exa_direccion` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `exa_telefono` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `exa_obs` text collate utf8_spanish2_ci NOT NULL,
  `exa_estado` int(1) NOT NULL default '1',
  `exa_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `exa_usu_id` bigint(20) NOT NULL,
  `exa_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`exa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Alianza' AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `alianza_emp`
-- 

INSERT INTO `alianza_emp` VALUES (1, 1, 'CONSTRUCTORA ALIANZA', '989898', '', '', '', 1, '2012-08-03 23:16:44', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (2, 1, 'COOPETARIVA ALIANZA ', '909090', 'direccion', '898989', 'ninguna', 1, '2012-08-03 23:17:21', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (3, 1, 'COOPETARIVA ALIANZA VIVIR', '909090', 'direccion', '898989', 'ninguna', 1, '2012-08-03 23:15:45', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (4, 1, 'TEMPORALES', '998877', 'Calle 116 47 68', '6789432', 'Es una empresa de Textifilh', 1, '2012-08-03 23:16:25', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alianza_sedes`
-- 

DROP TABLE IF EXISTS `alianza_sedes`;
CREATE TABLE `alianza_sedes` (
  `axs_id` int(11) NOT NULL auto_increment,
  `axs_exa_id` int(11) NOT NULL,
  `axs_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `axs_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `axs_estado` int(1) NOT NULL default '1',
  `axs_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `axs_usu_id` bigint(20) NOT NULL,
  `axs_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`axs_id`,`axs_exa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Alianza' AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `alianza_sedes`
-- 

INSERT INTO `alianza_sedes` VALUES (1, 1, 'Sede Girardot', 'que es??', 1, '2012-07-26 22:06:57', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (2, 1, 'sede galerias', '', 1, '2012-07-27 16:11:10', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (3, 2, 'uno', '', 1, '2012-07-27 16:12:04', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (4, 1, 'Sede norte', '', 1, '2012-07-27 16:17:59', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (5, 1, 'Sede nororiente', '', 1, '2012-07-27 16:19:57', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (6, 2, 'DOS', 'CARTA', 1, '2012-07-27 16:20:26', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cargos`
-- 

DROP TABLE IF EXISTS `cargos`;
CREATE TABLE `cargos` (
  `car_id` int(11) NOT NULL auto_increment,
  `car_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `car_dxe_id` int(11) NOT NULL,
  `car_revisa_id` int(11) NOT NULL,
  `car_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `car_prioridad` int(11) NOT NULL,
  `car_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `car_estado` int(1) NOT NULL default '1',
  `car_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `car_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`car_id`,`car_dxe_id`),
  KEY `fk_depempresa` (`car_dxe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Cargos en el departamento de la empresa' AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `cargos`
-- 

INSERT INTO `cargos` VALUES (1, 'MILE-PC', 4, 0, 'cargo dosuno', 0, '', 1, '2012-07-17 21:10:08', 1);
INSERT INTO `cargos` VALUES (2, 'MILE-PC', 4, 1, 'Cargo dosdos', 0, '', 1, '2012-07-17 21:11:00', 1);
INSERT INTO `cargos` VALUES (3, 'MILE-PC', 1, 0, 'Cargo tres', 0, '', 1, '2012-07-17 21:14:04', 1);
INSERT INTO `cargos` VALUES (4, 'MILE-PC', 1, 0, 'cargo 4', 0, '', 1, '2012-07-17 21:14:20', 1);
INSERT INTO `cargos` VALUES (5, 'MILE-PC', 3, 0, 'cargo 5', 0, '', 1, '2012-07-17 21:14:38', 1);
INSERT INTO `cargos` VALUES (6, 'MILE-PC', 3, 0, 'cargo 6', 0, '', 1, '2012-07-17 21:14:52', 1);
INSERT INTO `cargos` VALUES (7, 'MILE-PC', 2, 0, 'cargo 7', 0, '', 1, '2012-07-17 21:15:14', 1);
INSERT INTO `cargos` VALUES (8, 'MILE-PC', 2, 0, 'cargo 8', 0, '', 1, '2012-07-17 21:15:29', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ciudad`
-- 

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE `ciudad` (
  `ciu_id` int(11) unsigned NOT NULL auto_increment,
  `ciu_dep_id` int(11) unsigned NOT NULL,
  `ciu_nombre` varchar(50) collate utf8_spanish2_ci default NULL,
  `ciu_obs` text collate utf8_spanish2_ci NOT NULL,
  `ciu_estado` int(1) NOT NULL default '1',
  `ciu_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ciu_usu_id` bigint(20) NOT NULL,
  `ciu_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`ciu_id`),
  KEY `ciu_dep_id` (`ciu_dep_id`),
  KEY `ciu_nombre` (`ciu_nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1120 ;

-- 
-- Volcar la base de datos para la tabla `ciudad`
-- 

INSERT INTO `ciudad` VALUES (1, 1, 'Amazonas', '', 1, '2012-07-03 02:09:47', 1, 'MILE-PC');
INSERT INTO `ciudad` VALUES (2, 1, 'La chorrera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (3, 1, 'La pedrera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (4, 1, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (5, 1, 'Leticia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (6, 1, 'Miriti - parana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (7, 1, 'Puerto alegria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (8, 1, 'Puerto arica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (9, 1, 'Puerto nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (10, 1, 'Puerto santander ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (11, 1, 'Tarapaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (12, 2, 'Abejorral ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (13, 2, 'Abriaqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (14, 2, 'Alejandria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (15, 2, 'Amaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (16, 2, 'Amalfi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (17, 2, 'Andes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (18, 2, 'Angelopolis ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (19, 2, 'Angostura ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (20, 2, 'Anori ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (21, 2, 'Anza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (22, 2, 'Apartado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (23, 2, 'Arboletes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (24, 2, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (25, 2, 'Armenia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (26, 2, 'Barbosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (27, 2, 'Bello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (28, 2, 'Belmira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (29, 2, 'Betania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (30, 2, 'Betulia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (31, 2, 'Brice&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (33, 2, 'Caceres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (34, 2, 'Caicedo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (36, 2, 'Campamento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (37, 2, 'Ca&ntilde;asgordas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (38, 2, 'Caracoli ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (39, 2, 'Caramanta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (40, 2, 'Carepa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (41, 2, 'Carolina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (42, 2, 'Caucasia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (43, 2, 'Chigorodo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (44, 2, 'Cisneros ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (45, 2, 'Ciudad bolivar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (46, 2, 'Cocorna ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (47, 2, 'Concepcion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (48, 2, 'Concordia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (49, 2, 'Copacabana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (50, 2, 'Dabeiba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (51, 2, 'Don matias ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (52, 2, 'Ebejico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (53, 2, 'El bagre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (54, 2, 'El carmen de viboral ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (55, 2, 'El santuario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (56, 2, 'Entrerrios ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (57, 2, 'Envigado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (58, 2, 'Fredonia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (59, 2, 'Frontino ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (60, 2, 'Giraldo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (61, 2, 'Girardota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (62, 2, 'Gomez plata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (63, 2, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (64, 2, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (65, 2, 'Guarne ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (66, 2, 'Guatape ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (67, 2, 'Heliconia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (68, 2, 'Hispania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (69, 2, 'Itagui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (70, 2, 'Ituango ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (71, 2, 'Jardin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (72, 2, 'Jerico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (73, 2, 'La ceja ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (74, 2, 'La estrella ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (75, 2, 'La pintada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (76, 2, 'La union ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (77, 2, 'Liborina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (78, 2, 'Maceo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (79, 2, 'Marinilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (80, 2, 'Medellin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (81, 2, 'Montebello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (82, 2, 'Murindo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (83, 2, 'Mutata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (84, 2, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (85, 2, 'Nechi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (86, 2, 'Necocli ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (87, 2, 'Olaya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (88, 2, 'Pe&ntilde;ol ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (89, 2, 'Peque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (90, 2, 'Pueblorrico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (91, 2, 'Puerto berrio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (92, 2, 'Puerto nare ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (93, 2, 'Puerto triunfo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (94, 2, 'Remedios ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (95, 2, 'Retiro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (96, 2, 'Rionegro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (97, 2, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (98, 2, 'Sabaneta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (99, 2, 'Salgar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (100, 2, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (101, 2, 'San carlos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (102, 2, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (103, 2, 'San jeronimo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (104, 2, 'San jose de la monta&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (105, 2, 'San juan de uraba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (106, 2, 'San luis ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (107, 2, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (108, 2, 'San pedro de uraba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (109, 2, 'San rafael ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (110, 2, 'San roque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (111, 2, 'San vicente ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (112, 2, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (113, 2, 'Santa rosa de osos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (114, 2, 'Santafe de antioquia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (115, 2, 'Santo domingo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (116, 2, 'Segovia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (117, 2, 'Sonson ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (118, 2, 'Sopetran ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (119, 2, 'Tamesis ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (120, 2, 'Taraza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (121, 2, 'Tarso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (122, 2, 'Titiribi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (123, 2, 'Toledo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (124, 2, 'Turbo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (125, 2, 'Uramita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (126, 2, 'Urrao ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (127, 2, 'Valdivia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (128, 2, 'Valparaiso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (129, 2, 'Vegachi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (130, 2, 'Venecia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (131, 2, 'Vigia del fuerte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (132, 2, 'Yali ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (133, 2, 'Yarumal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (134, 2, 'Yolombo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (135, 2, 'Yondo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (136, 2, 'Zaragoza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (137, 3, 'Arauca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (138, 3, 'Arauquita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (139, 3, 'Cravo norte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (140, 3, 'Fortul ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (141, 3, 'Puerto rondon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (142, 3, 'Saravena ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (143, 3, 'Tame ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (144, 4, 'Providencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (145, 4, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (146, 5, 'Baranoa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (147, 5, 'Barranquilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (148, 5, 'Campo de la cruz ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (149, 5, 'Candelaria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (150, 5, 'Galapa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (151, 5, 'Juan de acosta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (152, 5, 'Luruaco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (153, 5, 'Malambo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (154, 5, 'Manati ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (155, 5, 'Palmar de varela ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (156, 5, 'Piojo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (157, 5, 'Polonuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (158, 5, 'Ponedera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (159, 5, 'Puerto colombia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (160, 5, 'Repelon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (161, 5, 'Sabanagrande ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (162, 5, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (163, 5, 'Santa lucia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (164, 5, 'Santo tomas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (165, 5, 'Soledad ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (166, 5, 'Suan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (167, 5, 'Tubara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (168, 5, 'Usiacuri ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (169, 6, 'Bogota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (170, 7, 'Achi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (171, 7, 'Altos del rosario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (172, 7, 'Arenal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (173, 7, 'Arjona ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (174, 7, 'Arroyohondo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (175, 7, 'Barranco de loba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (176, 7, 'Calamar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (177, 7, 'Cantagallo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (178, 7, 'Cartagena ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (179, 7, 'Cicuco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (180, 7, 'Clemencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (181, 7, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (182, 7, 'El carmen de bolivar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (183, 7, 'El guamo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (184, 7, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (185, 7, 'Hatillo de loba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (186, 7, 'Magangue ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (187, 7, 'Mahates ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (188, 7, 'Margarita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (189, 7, 'Maria la baja ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (190, 7, 'Mompos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (191, 7, 'Montecristo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (192, 7, 'Morales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (193, 7, 'Pinillos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (194, 7, 'Regidor ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (195, 7, 'Rio viejo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (196, 7, 'San cristobal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (197, 7, 'San estanislao ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (198, 7, 'San fernando ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (199, 7, 'San jacinto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (200, 7, 'San jacinto del cauca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (201, 7, 'San juan nepomuceno ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (202, 7, 'San martin de loba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (203, 7, 'San pablo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (204, 7, 'Santa catalina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (205, 7, 'Santa rosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (206, 7, 'Santa rosa del sur ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (207, 7, 'Simiti ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (208, 7, 'Soplaviento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (209, 7, 'Talaigua nuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (210, 7, 'Tiquisio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (211, 7, 'Turbaco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (212, 7, 'Turbana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (213, 7, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (214, 7, 'Zambrano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (215, 8, 'Almeida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (216, 8, 'Aquitania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (217, 8, 'Arcabuco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (218, 8, 'Belen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (219, 8, 'Berbeo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (220, 8, 'Beteitiva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (221, 8, 'Boavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (222, 8, 'Boyaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (223, 8, 'Brice&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (224, 8, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (225, 8, 'Busbanza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (226, 8, 'Caldas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (227, 8, 'Campohermoso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (228, 8, 'Cerinza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (229, 8, 'Chinavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (230, 8, 'Chiquinquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (231, 8, 'Chiquiza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (232, 8, 'Chiscas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (233, 8, 'Chita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (234, 8, 'Chitaraque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (235, 8, 'Chivata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (236, 8, 'Chivor ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (237, 8, 'Cienega ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (238, 8, 'Combita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (239, 8, 'Coper ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (240, 8, 'Corrales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (241, 8, 'Covarachia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (242, 8, 'Cubara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (243, 8, 'Cucaita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (244, 8, 'Cuitiva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (245, 8, 'Duitama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (246, 8, 'El cocuy ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (247, 8, 'El espino ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (248, 8, 'Firavitoba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (249, 8, 'Floresta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (250, 8, 'Gachantiva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (251, 8, 'Gameza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (252, 8, 'Garagoa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (253, 8, 'Guacamayas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (254, 8, 'Guateque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (255, 8, 'Guayata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (256, 8, 'Güican ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (257, 8, 'Iza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (258, 8, 'Jenesano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (259, 8, 'Jerico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (260, 8, 'La capilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (261, 8, 'La uvita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (262, 8, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (263, 8, 'Labranzagrande ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (264, 8, 'Macanal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (265, 8, 'Maripi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (266, 8, 'Miraflores ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (267, 8, 'Mongua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (268, 8, 'Mongui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (269, 8, 'Moniquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (270, 8, 'Motavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (271, 8, 'Muzo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (272, 8, 'Nobsa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (273, 8, 'Nuevo colon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (274, 8, 'Oicata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (275, 8, 'Otanche ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (276, 8, 'Pachavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (277, 8, 'Paez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (278, 8, 'Paipa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (279, 8, 'Pajarito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (280, 8, 'Panqueba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (281, 8, 'Pauna ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (282, 8, 'Paya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (283, 8, 'Paz de rio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (284, 8, 'Pesca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (285, 8, 'Pisba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (286, 8, 'Puerto boyaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (287, 8, 'Quipama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (288, 8, 'Ramiriqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (289, 8, 'Raquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (290, 8, 'Rondon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (291, 8, 'Saboya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (292, 8, 'Sachica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (293, 8, 'Samaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (294, 8, 'San eduardo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (295, 8, 'San jose de pare ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (296, 8, 'San luis de gaceno ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (297, 8, 'San mateo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (298, 8, 'San miguel de sema ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (299, 8, 'San pablo de borbur ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (300, 8, 'Santa maria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (301, 8, 'Santa rosa de viterbo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (302, 8, 'Santa sofia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (303, 8, 'Santana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (304, 8, 'Sativanorte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (305, 8, 'Sativasur ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (306, 8, 'Siachoque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (307, 8, 'Soata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (308, 8, 'Socha ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (309, 8, 'Socota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (310, 8, 'Sogamoso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (311, 8, 'Somondoco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (312, 8, 'Sora ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (313, 8, 'Soraca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (314, 8, 'Sotaquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (315, 8, 'Susacon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (316, 8, 'Sutamarchan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (317, 8, 'Sutatenza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (318, 8, 'Tasco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (319, 8, 'Tenza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (320, 8, 'Tibana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (321, 8, 'Tibasosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (322, 8, 'Tinjaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (323, 8, 'Tipacoque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (324, 8, 'Toca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (325, 8, 'Togüi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (326, 8, 'Topaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (327, 8, 'Tota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (328, 8, 'Tunja ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (329, 8, 'Tunungua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (330, 8, 'Turmeque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (331, 8, 'Tuta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (332, 8, 'Tutaza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (333, 8, 'Umbita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (334, 8, 'Ventaquemada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (335, 8, 'Villa de leyva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (336, 8, 'Viracacha ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (337, 8, 'Zetaquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (338, 9, 'Aguadas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (339, 9, 'Anserma ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (340, 9, 'Aranzazu ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (341, 9, 'Belalcazar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (342, 9, 'Chinchina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (343, 9, 'Filadelfia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (344, 9, 'La dorada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (345, 9, 'La merced ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (346, 9, 'Manizales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (347, 9, 'Manzanares ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (348, 9, 'Marmato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (349, 9, 'Marquetalia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (350, 9, 'Marulanda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (351, 9, 'Neira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (352, 9, 'Norcasia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (353, 9, 'Pacora ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (354, 9, 'Palestina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (355, 9, 'Pensilvania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (356, 9, 'Riosucio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (357, 9, 'Risaralda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (358, 9, 'Salamina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (359, 9, 'Samana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (360, 9, 'San jose ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (361, 9, 'Supia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (362, 9, 'Victoria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (363, 9, 'Villamaria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (364, 9, 'Viterbo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (365, 10, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (366, 10, 'Belen de los andaquies ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (367, 10, 'Cartagena del chaira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (368, 10, 'Curillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (369, 10, 'El doncello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (370, 10, 'El paujil ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (371, 10, 'Florencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (372, 10, 'La monta&ntilde;ita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (373, 10, 'Milan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (374, 10, 'Morelia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (375, 10, 'Puerto rico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (376, 10, 'San jose del fragua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (377, 10, 'San vicente del caguan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (378, 10, 'Solano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (379, 10, 'Solita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (380, 10, 'Valparaiso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (381, 11, 'Aguazul ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (382, 11, 'Chameza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (383, 11, 'Hato corozal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (384, 11, 'La salina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (385, 11, 'Mani ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (386, 11, 'Monterrey ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (387, 11, 'Nunchia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (388, 11, 'Orocue ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (389, 11, 'Paz de ariporo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (390, 11, 'Pore ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (391, 11, 'Recetor ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (392, 11, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (393, 11, 'Sacama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (394, 11, 'San luis de palenque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (395, 11, 'Tamara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (396, 11, 'Tauramena ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (397, 11, 'Trinidad ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (398, 11, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (399, 11, 'Yopal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (400, 12, 'Almaguer ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (401, 12, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (402, 12, 'Balboa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (403, 12, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (404, 12, 'Buenos aires ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (405, 12, 'Cajibio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (406, 12, 'Caldono ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (407, 12, 'Caloto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (408, 12, 'Corinto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (409, 12, 'El tambo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (410, 12, 'Florencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (411, 12, 'Guapi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (412, 12, 'Inza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (413, 12, 'Jambalo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (414, 12, 'La sierra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (415, 12, 'La vega ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (416, 12, 'Lopez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (417, 12, 'Mercaderes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (418, 12, 'Miranda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (419, 12, 'Morales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (420, 12, 'Padilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (421, 12, 'Paez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (422, 12, 'Patia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (423, 12, 'Piamonte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (424, 12, 'Piendamo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (425, 12, 'Popayan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (426, 12, 'Puerto tejada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (427, 12, 'Purace ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (428, 12, 'Rosas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (429, 12, 'San sebastian ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (430, 12, 'Santa rosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (431, 12, 'Santander de quilichao ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (432, 12, 'Silvia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (433, 12, 'Sotara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (434, 12, 'Suarez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (435, 12, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (436, 12, 'Timbio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (437, 12, 'Timbiqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (438, 12, 'Toribio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (439, 12, 'Totoro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (440, 12, 'Villa rica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (441, 13, 'Aguachica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (442, 13, 'Agustin codazzi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (443, 13, 'Astrea ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (444, 13, 'Becerril ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (445, 13, 'Bosconia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (446, 13, 'Chimichagua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (447, 13, 'Chiriguana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (448, 13, 'Curumani ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (449, 13, 'El copey ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (450, 13, 'El paso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (451, 13, 'Gamarra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (452, 13, 'Gonzalez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (453, 13, 'La gloria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (454, 13, 'La jagua de ibirico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (455, 13, 'La paz ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (456, 13, 'Manaure ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (457, 13, 'Pailitas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (458, 13, 'Pelaya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (459, 13, 'Pueblo bello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (460, 13, 'Rio de oro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (461, 13, 'San alberto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (462, 13, 'San diego ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (463, 13, 'San martin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (464, 13, 'Tamalameque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (465, 13, 'Valledupar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (466, 14, 'Acandi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (467, 14, 'Alto baudo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (468, 14, 'Atrato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (469, 14, 'Bagado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (470, 14, 'Bahia solano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (471, 14, 'Bajo baudo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (472, 14, 'Belen de bajira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (473, 14, 'Bojaya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (474, 14, 'Carmen del darien ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (475, 14, 'Certegui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (476, 14, 'Condoto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (477, 14, 'El canton del san pablo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (478, 14, 'El carmen de atrato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (479, 14, 'El litoral del san juan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (480, 14, 'Istmina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (481, 14, 'Jurado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (482, 14, 'Lloro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (483, 14, 'Medio atrato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (484, 14, 'Medio baudo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (485, 14, 'Medio san juan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (486, 14, 'Novita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (487, 14, 'Nuqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (488, 14, 'Quibdo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (489, 14, 'Rio iro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (490, 14, 'Rio quito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (491, 14, 'Riosucio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (492, 14, 'San jose del palmar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (493, 14, 'Sipi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (494, 14, 'Tado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (495, 14, 'Unguia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (496, 14, 'Union panamericana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (497, 15, 'Ayapel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (498, 15, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (499, 15, 'Canalete ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (500, 15, 'Cerete ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (501, 15, 'Chima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (502, 15, 'Chinu ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (503, 15, 'Cienaga de oro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (504, 15, 'Cotorra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (505, 15, 'La apartada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (506, 15, 'Lorica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (507, 15, 'Los cordobas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (508, 15, 'Momil ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (509, 15, 'Mo&ntilde;itos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (510, 15, 'Montelibano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (511, 15, 'Monteria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (512, 15, 'Planeta rica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (513, 15, 'Pueblo nuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (514, 15, 'Puerto escondido ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (515, 15, 'Puerto libertador ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (516, 15, 'Purisima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (517, 15, 'Sahagun ', '', 1, '2012-07-10 20:35:51', 1, '');
INSERT INTO `ciudad` VALUES (518, 15, 'San andres sotavento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (519, 15, 'San antero ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (520, 15, 'San bernardo del viento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (521, 15, 'San carlos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (522, 15, 'San pelayo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (523, 15, 'Tierralta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (524, 15, 'Valencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (525, 16, 'Agua de Dioss', '', 1, '2012-07-10 20:22:27', 1, '');
INSERT INTO `ciudad` VALUES (526, 16, 'Alban ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (527, 16, 'Anapoima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (528, 16, 'Anolaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (529, 16, 'Apulo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (530, 16, 'Arbelaez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (531, 16, 'Beltran ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (532, 16, 'Bituima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (533, 16, 'Bojaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (534, 16, 'Cabrera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (535, 16, 'Cachipay ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (536, 16, 'Cajica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (537, 16, 'Caparrapi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (538, 16, 'Caqueza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (539, 16, 'Carmen de carupa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (540, 16, 'Chaguani ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (541, 16, 'Chia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (542, 16, 'Chipaque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (543, 16, 'Choachi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (544, 16, 'Choconta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (545, 16, 'Cogua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (546, 16, 'Cota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (547, 16, 'Cucunuba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (548, 16, 'El colegio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (549, 16, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (550, 16, 'El rosal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (551, 16, 'Facatativa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (552, 16, 'Fomeque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (553, 16, 'Fosca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (554, 16, 'Funza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (555, 16, 'Fuquene ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (556, 16, 'Fusagasuga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (557, 16, 'Gachala ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (558, 16, 'Gachancipa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (559, 16, 'Gacheta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (560, 16, 'Gama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (561, 16, 'Girardot ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (562, 16, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (563, 16, 'Guacheta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (564, 16, 'Guaduas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (565, 16, 'Guasca ', '', 1, '2012-05-20 01:21:04', 1, '');
INSERT INTO `ciudad` VALUES (566, 16, 'Guataqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (567, 16, 'Guatavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (568, 16, 'Guayabal de siquima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (569, 16, 'Guayabetal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (570, 16, 'Gutierrez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (571, 16, 'Jerusalen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (572, 16, 'Junin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (573, 16, 'La calera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (574, 16, 'La mesa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (575, 16, 'La palma ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (576, 16, 'La pe&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (577, 16, 'La vega ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (578, 16, 'Lenguazaque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (579, 16, 'Macheta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (580, 16, 'Madrid ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (581, 16, 'Manta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (582, 16, 'Medinaa', '', 1, '2012-07-10 20:22:43', 1, '');
INSERT INTO `ciudad` VALUES (583, 16, 'Mosquera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (584, 16, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (585, 16, 'Nemocon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (586, 16, 'Nilo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (587, 16, 'Nimaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (588, 16, 'Nocaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (589, 16, 'Pacho ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (590, 16, 'Paime ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (591, 16, 'Pandi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (592, 16, 'Paratebueno ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (593, 16, 'Pasca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (594, 16, 'Puerto salgar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (595, 16, 'Puli ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (596, 16, 'Quebradanegra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (597, 16, 'Quetame ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (598, 16, 'Quipile ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (599, 16, 'Ricaurte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (600, 16, 'San antonio del tequendama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (601, 16, 'San bernardo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (602, 16, 'San cayetano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (603, 16, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (604, 16, 'San juan de rio seco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (605, 16, 'Sasaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (606, 16, 'Sesquile ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (607, 16, 'Sibate ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (608, 16, 'Silvania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (609, 16, 'Simijaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (610, 16, 'Soacha ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (611, 16, 'Sopo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (612, 16, 'Subachoque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (613, 16, 'Suesca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (614, 16, 'Supata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (615, 16, 'Susa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (616, 16, 'Sutatausa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (617, 16, 'Tabio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (618, 16, 'Tausa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (619, 16, 'Tena ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (620, 16, 'Tenjo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (621, 16, 'Tibacuy ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (622, 16, 'Tibirita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (623, 16, 'Tocaima ima', '', 1, '2012-07-10 19:59:42', 1, '');
INSERT INTO `ciudad` VALUES (624, 16, 'Tocancipa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (625, 16, 'Topaipi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (626, 16, 'Ubala ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (627, 16, 'Ubaque ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (628, 16, 'Une ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (629, 16, 'Útica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (630, 16, 'Venecia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (631, 16, 'Vergara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (632, 16, 'Viani ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (633, 16, 'Villa de san diego de ubate ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (634, 16, 'Villagomez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (635, 16, 'Villapinzon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (636, 16, 'Villeta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (637, 16, 'Viota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (638, 16, 'Yacopi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (639, 16, 'Zipacon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (640, 16, 'Zipaquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (641, 17, 'Barranco minas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (642, 17, 'Cacahual ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (643, 17, 'Inirida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (644, 17, 'La guadalupe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (645, 17, 'Mapiripana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (646, 17, 'Morichal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (647, 17, 'Pana pana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (648, 17, 'Puerto colombia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (649, 17, 'San felipe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (650, 18, 'Calamar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (651, 18, 'El retorno ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (652, 18, 'Miraflores ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (653, 18, 'San jose del guaviare ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (654, 19, 'Acevedo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (655, 19, 'Agrado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (656, 19, 'Aipe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (657, 19, 'Algeciras ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (658, 19, 'Altamira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (659, 19, 'Baraya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (660, 19, 'Campoalegre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (661, 19, 'Colombia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (662, 19, 'Elias ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (663, 19, 'Garzon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (664, 19, 'Gigante ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (665, 19, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (666, 19, 'Hobo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (667, 19, 'Iquira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (668, 19, 'Isnos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (669, 19, 'La argentina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (670, 19, 'La plata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (671, 19, 'Nataga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (672, 19, 'Neiva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (673, 19, 'Oporapa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (674, 19, 'Paicol ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (675, 19, 'Palermo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (676, 19, 'Palestina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (677, 19, 'Pital ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (678, 19, 'Pitalito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (679, 19, 'Rivera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (680, 19, 'Saladoblanco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (681, 19, 'San agustin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (682, 19, 'Santa maria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (683, 19, 'Suaza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (684, 19, 'Tarqui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (685, 19, 'Tello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (686, 19, 'Teruel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (687, 19, 'Tesalia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (688, 19, 'Timana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (689, 19, 'Villavieja ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (690, 19, 'Yaguara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (691, 20, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (692, 20, 'Barrancas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (693, 20, 'Dibulla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (694, 20, 'Distraccion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (695, 20, 'El molino ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (696, 20, 'Fonseca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (697, 20, 'Hatonuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (698, 20, 'La jagua del pilar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (699, 20, 'Maicao ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (700, 20, 'Manaure ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (701, 20, 'Riohacha ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (702, 20, 'San juan del cesar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (703, 20, 'Uribia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (704, 20, 'Urumita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (705, 20, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (706, 21, 'Algarrobo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (707, 21, 'Aracataca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (708, 21, 'Ariguani ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (709, 21, 'Cerro san antonio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (710, 21, 'Chibolo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (711, 21, 'Cienaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (712, 21, 'Concordia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (713, 21, 'El banco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (714, 21, 'El pi&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (715, 21, 'El reten ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (716, 21, 'Fundacion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (717, 21, 'Guamal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (718, 21, 'Nueva granada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (719, 21, 'Pedraza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (720, 21, 'Piji&ntilde;o del carmen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (721, 21, 'Pivijay ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (722, 21, 'Plato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (723, 21, 'Puebloviejo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (724, 21, 'Remolino ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (725, 21, 'Sabanas de san angel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (726, 21, 'Salamina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (727, 21, 'San sebastian de buenavista ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (728, 21, 'San zenon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (729, 21, 'Santa ana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (730, 21, 'Santa barbara de pinto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (731, 21, 'Santa marta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (732, 21, 'Sitionuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (733, 21, 'Tenerife ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (734, 21, 'Zapayan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (735, 21, 'Zona bananera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (736, 22, 'Acacias ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (737, 22, 'Barranca de upia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (738, 22, 'Cabuyaro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (739, 22, 'Castilla la nueva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (740, 22, 'Cubarral ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (741, 22, 'Cumaral ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (742, 22, 'El calvario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (743, 22, 'El castillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (744, 22, 'El dorado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (745, 22, 'Fuente de oro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (746, 22, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (747, 22, 'Guamal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (748, 22, 'La macarena ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (749, 22, 'Lejanias ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (750, 22, 'Mapiripan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (751, 22, 'Mesetas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (752, 22, 'Puerto concordia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (753, 22, 'Puerto gaitan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (754, 22, 'Puerto lleras ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (755, 22, 'Puerto lopez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (756, 22, 'Puerto rico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (757, 22, 'Restrepo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (758, 22, 'San carlos de guaroa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (759, 22, 'San juan de arama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (760, 22, 'San juanito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (761, 22, 'San martin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (762, 22, 'Uribe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (763, 22, 'Villavicencio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (764, 22, 'Vistahermosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (765, 23, 'Alban ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (766, 23, 'Aldana ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (767, 23, 'Ancuya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (768, 23, 'Arboleda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (769, 23, 'Barbacoas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (770, 23, 'Belen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (771, 23, 'Buesaco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (772, 23, 'Chachagüi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (773, 23, 'Colon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (774, 23, 'Consaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (775, 23, 'Contadero ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (776, 23, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (777, 23, 'Cuaspud ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (778, 23, 'Cumbal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (779, 23, 'Cumbitara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (780, 23, 'El charco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (781, 23, 'El pe&ntilde;ol ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (782, 23, 'El rosario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (783, 23, 'El tablon de gomez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (784, 23, 'El tambo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (785, 23, 'Francisco pizarro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (786, 23, 'Funes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (787, 23, 'Guachucal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (788, 23, 'Guaitarilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (789, 23, 'Gualmatan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (790, 23, 'Iles ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (791, 23, 'Imues ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (792, 23, 'Ipiales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (793, 23, 'La cruz ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (794, 23, 'La florida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (795, 23, 'La llanada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (796, 23, 'La tola ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (797, 23, 'La union ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (798, 23, 'Leiva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (799, 23, 'Linares ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (800, 23, 'Los andes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (801, 23, 'Magüi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (802, 23, 'Mallama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (803, 23, 'Mosquera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (804, 23, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (805, 23, 'Olaya herrera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (806, 23, 'Ospina ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (807, 23, 'Pasto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (808, 23, 'Policarpa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (809, 23, 'Potosi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (810, 23, 'Providencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (811, 23, 'Puerres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (812, 23, 'Pupiales ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (813, 23, 'Ricaurte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (814, 23, 'Roberto payan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (815, 23, 'Samaniego ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (816, 23, 'San bernardo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (817, 23, 'San lorenzo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (818, 23, 'San pablo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (819, 23, 'San pedro de cartago ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (820, 23, 'Sandona ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (821, 23, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (822, 23, 'Santacruz ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (823, 23, 'Sapuyes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (824, 23, 'Taminango ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (825, 23, 'Tangua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (826, 23, 'Tumaco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (827, 23, 'Tuquerres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (828, 23, 'Yacuanquer ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (829, 24, 'Abrego ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (830, 24, 'Arboledas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (831, 24, 'Bochalema ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (832, 24, 'Bucarasica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (833, 24, 'Cachira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (834, 24, 'Cacota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (835, 24, 'Chinacota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (836, 24, 'Chitaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (837, 24, 'Convencion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (838, 24, 'Cucuta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (839, 24, 'Cucutilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (840, 24, 'Durania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (841, 24, 'El carmen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (842, 24, 'El tarra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (843, 24, 'El zulia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (844, 24, 'Gramalote ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (845, 24, 'Hacari ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (846, 24, 'Herran ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (847, 24, 'La esperanza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (848, 24, 'La playa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (849, 24, 'Labateca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (850, 24, 'Los patios ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (851, 24, 'Lourdes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (852, 24, 'Mutiscua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (853, 24, 'Oca&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (854, 24, 'Pamplona ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (855, 24, 'Pamplonita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (856, 24, 'Puerto santander ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (857, 24, 'Ragonvalia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (858, 24, 'Salazar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (859, 24, 'San calixto ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (860, 24, 'San cayetano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (861, 24, 'Santiago ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (862, 24, 'Sardinata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (863, 24, 'Silos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (864, 24, 'Teorama ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (865, 24, 'Tibu ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (866, 24, 'Toledo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (867, 24, 'Villa caro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (868, 24, 'Villa del rosario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (869, 25, 'Colon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (870, 25, 'Leguizamo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (871, 25, 'Mocoa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (872, 25, 'Orito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (873, 25, 'Puerto asis ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (874, 25, 'Puerto caicedo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (875, 25, 'Puerto guzman ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (876, 25, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (877, 25, 'San miguel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (878, 25, 'Santiago ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (879, 25, 'Sibundoy ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (880, 25, 'Valle del guamuez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (881, 25, 'Villagarzon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (882, 26, 'Armenia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (883, 26, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (884, 26, 'Calarca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (885, 26, 'Circasia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (886, 26, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (887, 26, 'Filandia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (888, 26, 'Genova ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (889, 26, 'La tebaida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (890, 26, 'Montenegro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (891, 26, 'Pijao ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (892, 26, 'Quimbaya ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (893, 26, 'Salento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (894, 27, 'Apia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (895, 27, 'Balboa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (896, 27, 'Belen de umbria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (897, 27, 'Dosquebradas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (898, 27, 'Guatica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (899, 27, 'La celia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (900, 27, 'La virginia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (901, 27, 'Marsella ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (902, 27, 'Mistrato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (903, 27, 'Pereira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (904, 27, 'Pueblo rico ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (905, 27, 'Quinchia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (906, 27, 'Santa rosa de cabal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (907, 27, 'Santuario ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (908, 28, 'Aguada ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (909, 28, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (910, 28, 'Aratoca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (911, 28, 'Barbosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (912, 28, 'Barichara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (913, 28, 'Barrancabermeja ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (914, 28, 'Betulia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (915, 28, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (916, 28, 'Bucaramanga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (917, 28, 'Cabrera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (918, 28, 'California ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (919, 28, 'Capitanejo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (920, 28, 'Carcasi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (921, 28, 'Cepita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (922, 28, 'Cerrito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (923, 28, 'Charala ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (924, 28, 'Charta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (925, 28, 'Chima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (926, 28, 'Chipata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (927, 28, 'Cimitarra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (928, 28, 'Concepcion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (929, 28, 'Confines ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (930, 28, 'Contratacion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (931, 28, 'Coromoro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (932, 28, 'Curiti ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (933, 28, 'El carmen de chucuri ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (934, 28, 'El guacamayo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (935, 28, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (936, 28, 'El playon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (937, 28, 'Encino ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (938, 28, 'Enciso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (939, 28, 'Florian ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (940, 28, 'Floridablanca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (941, 28, 'Galan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (942, 28, 'Gambita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (943, 28, 'Giron ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (944, 28, 'Guaca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (945, 28, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (946, 28, 'Guapota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (947, 28, 'Guavata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (948, 28, 'Güepsa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (949, 28, 'Hato ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (950, 28, 'Jesus maria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (951, 28, 'Jordan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (952, 28, 'La belleza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (953, 28, 'La paz ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (954, 28, 'Landazuri ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (955, 28, 'Lebrija ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (956, 28, 'Los santos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (957, 28, 'Macaravita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (958, 28, 'Malaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (959, 28, 'Matanza ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (960, 28, 'Mogotes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (961, 28, 'Molagavita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (962, 28, 'Ocamonte ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (963, 28, 'Oiba ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (964, 28, 'Onzaga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (965, 28, 'Palmar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (966, 28, 'Palmas del socorro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (967, 28, 'Paramo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (968, 28, 'Piedecuesta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (969, 28, 'Pinchote ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (970, 28, 'Puente nacional ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (971, 28, 'Puerto parra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (972, 28, 'Puerto wilches ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (973, 28, 'Rionegro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (974, 28, 'Sabana de torres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (975, 28, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (976, 28, 'San benito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (977, 28, 'San gil ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (978, 28, 'San joaquin ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (979, 28, 'San jose de miranda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (980, 28, 'San miguel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (981, 28, 'San vicente de chucuri ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (982, 28, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (983, 28, 'Santa helena del opon ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (984, 28, 'Simacota ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (985, 28, 'Socorro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (986, 28, 'Suaita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (987, 28, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (988, 28, 'Surata ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (989, 28, 'Tona ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (990, 28, 'Valle de san jose ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (991, 28, 'Velez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (992, 28, 'Vetas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (993, 28, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (994, 28, 'Zapatoca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (995, 29, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (996, 29, 'Caimito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (997, 29, 'Chalan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (998, 29, 'Coloso ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (999, 29, 'Corozal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1000, 29, 'Cove&ntilde;as ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1001, 29, 'El roble ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1002, 29, 'Galeras ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1003, 29, 'Guaranda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1004, 29, 'La union ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1005, 29, 'Los palmitos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1006, 29, 'Majagual ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1007, 29, 'Morroa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1008, 29, 'Ovejas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1009, 29, 'Palmito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1010, 29, 'Sampues ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1011, 29, 'San benito abad ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1012, 29, 'San juan de betulia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1013, 29, 'San marcos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1014, 29, 'San onofre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1015, 29, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1016, 29, 'Santiago de tolu ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1017, 29, 'Since ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1018, 29, 'Sincelejo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1019, 29, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1020, 29, 'Tolu viejo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1021, 30, 'Alpujarra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1022, 30, 'Alvarado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1023, 30, 'Ambalema ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1024, 30, 'Anzoategui ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1025, 30, 'Armero ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1026, 30, 'Ataco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1027, 30, 'Cajamarca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1028, 30, 'Carmen de apicala ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1029, 30, 'Casabianca ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1030, 30, 'Chaparral ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1031, 30, 'Coello ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1032, 30, 'Coyaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1033, 30, 'Cunday ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1034, 30, 'Dolores ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1035, 30, 'Espinal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1036, 30, 'Falan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1037, 30, 'Flandes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1038, 30, 'Fresno ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1039, 30, 'Guamo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1040, 30, 'Herveo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1041, 30, 'Honda ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1042, 30, 'Ibague ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1043, 30, 'Icononzo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1044, 30, 'Lerida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1045, 30, 'Libano ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1046, 30, 'Mariquita ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1047, 30, 'Melgar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1048, 30, 'Murillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1049, 30, 'Natagaima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1050, 30, 'Ortega ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1051, 30, 'Palocabildo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1052, 30, 'Piedras ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1053, 30, 'Planadas ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1054, 30, 'Prado ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1055, 30, 'Purificacion ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1056, 30, 'Rioblanco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1057, 30, 'Roncesvalles ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1058, 30, 'Rovira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1059, 30, 'Salda&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1060, 30, 'San antonio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1061, 30, 'San luis ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1062, 30, 'Santa isabel ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1063, 30, 'Suarez ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1064, 30, 'Valle de san juan ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1065, 30, 'Venadillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1066, 30, 'Villahermosa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1067, 30, 'Villarrica ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1068, 31, 'Alcala ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1069, 31, 'Andalucia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1070, 31, 'Ansermanuevo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1071, 31, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1072, 31, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1073, 31, 'Buenaventura ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1074, 31, 'Bugalagrande ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1075, 31, 'Caicedonia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1076, 31, 'Cali ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1077, 31, 'Calima ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1078, 31, 'Candelaria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1079, 31, 'Cartago ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1080, 31, 'Dagua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1081, 31, 'El aguila ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1082, 31, 'El cairo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1083, 31, 'El cerrito ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1084, 31, 'El dovio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1085, 31, 'Florida ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1086, 31, 'Ginebra ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1087, 31, 'Guacari ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1088, 31, 'Guadalajara de buga ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1089, 31, 'Jamundi ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1090, 31, 'La cumbre ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1091, 31, 'La union ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1092, 31, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1093, 31, 'Obando ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1094, 31, 'Palmira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1095, 31, 'Pradera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1096, 31, 'Restrepo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1097, 31, 'Riofrio ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1098, 31, 'Roldanillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1099, 31, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1100, 31, 'Sevilla ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1101, 31, 'Toro ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1102, 31, 'Trujillo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1103, 31, 'Tulua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1104, 31, 'Ulloa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1105, 31, 'Versalles ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1106, 31, 'Vijes ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1107, 31, 'Yotoco ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1108, 31, 'Yumbo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1109, 31, 'Zarzal ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1110, 32, 'Caruru ', '', 1, '2012-07-10 20:24:19', 1, '');
INSERT INTO `ciudad` VALUES (1111, 32, 'Mitu ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1112, 32, 'Pacoa ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1113, 32, 'Papunaua ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1114, 32, 'Taraira ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1115, 32, 'Yavarate ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1116, 33, 'Cumaribo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1117, 33, 'La primavera ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1118, 33, 'Puerto carre&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (1119, 33, 'Santa rosalia ', '', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `departamento`
-- 

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE `departamento` (
  `dep_id` int(11) unsigned NOT NULL auto_increment,
  `dep_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `dep_nombre` varchar(65) character set latin1 default NULL,
  `dep_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `dep_estado` int(1) NOT NULL default '1',
  `dep_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `dep_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`dep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=34 ;

-- 
-- Volcar la base de datos para la tabla `departamento`
-- 

INSERT INTO `departamento` VALUES (1, 'MILE-PC', 'Amazonas', 'El Amazonas es la regiÃ³n selvÃ¡tica tropical mÃ¡s grande del planeta, con una extensiÃ³n aproximada de 6.000.000 km2 repartidos en ocho paÃ­ses de SuramÃ©rica: Brasil, PerÃº (estos dos paÃ­ses los que mayor extensiÃ³n selvÃ¡tiva poseen), Colombia, Bolivia, Venezuela, Ecuador, Guyana y Guayana Francesa.', 1, '2012-07-03 02:08:51', 1);
INSERT INTO `departamento` VALUES (2, '', 'Antioquia', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (3, '', 'Arauca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (4, '', 'Archipielago de San Andres, Providencia', '', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `departamento` VALUES (5, '', 'Atlantico', 'jiji', 1, '2012-05-03 22:19:38', 1);
INSERT INTO `departamento` VALUES (6, '', 'Bogota D.C', '', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `departamento` VALUES (7, '', 'Bolivar', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (8, '', 'Boyaca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (9, '', 'Caldas', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (10, '', 'Caqueta', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (11, '', 'Casanare', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (12, '', 'Cauca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (13, '', 'Cesar', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (14, '', 'Choco', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (15, '', 'Cordoba', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (16, 'MILE-PC', 'Cundinamarca', 'vivi cundi', 1, '2012-07-10 20:25:17', 1);
INSERT INTO `departamento` VALUES (17, '', 'Guainia', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (18, '', 'Guaviare', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (19, '', 'Huila', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (20, '', 'La Guajira', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (21, '', 'Magdalena', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (22, '', 'Meta', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (23, '', 'Narino', '', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `departamento` VALUES (24, '', 'Norte de Santander', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (25, '', 'Putumayo', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (26, '', 'Quindio', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (27, '', 'Risaralda', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (28, '', 'Santander', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (29, '', 'Sucre', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (30, 'MILE-PC', 'Tolimaa', '', 1, '2012-07-10 20:23:14', 1);
INSERT INTO `departamento` VALUES (31, '', 'Valle del Cauca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (32, '', 'Vaupes', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (33, '', 'Vichada', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `depxdepal`
-- 

DROP TABLE IF EXISTS `depxdepal`;
CREATE TABLE `depxdepal` (
  `dxd_id` int(11) NOT NULL auto_increment,
  `dxd_dxe_id` int(11) NOT NULL COMMENT 'real',
  `dxd_axe_id` int(11) NOT NULL COMMENT 'recepcion',
  `dxd_estado` int(1) NOT NULL default '1',
  `dxd_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `dxd_usu_id` int(11) NOT NULL,
  `dxd_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`dxd_id`),
  KEY `dxd_dxe_id` (`dxd_dxe_id`),
  KEY `dxd_axe_id` (`dxd_axe_id`),
  KEY `dxd_usu_id` (`dxd_usu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Relaciona Deptos Grupo con Deptos Emp Alianza' AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `depxdepal`
-- 

INSERT INTO `depxdepal` VALUES (1, 1, 1, 1, '2012-07-30 23:16:13', 1, 'MILE-PC');
INSERT INTO `depxdepal` VALUES (2, 3, 1, 1, '2012-07-30 22:17:02', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `dep_empresa`
-- 

DROP TABLE IF EXISTS `dep_empresa`;
CREATE TABLE `dep_empresa` (
  `dxe_id` int(11) NOT NULL auto_increment,
  `dxe_sede_id` int(11) NOT NULL,
  `dxe_nombre` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `dxe_descricion` text collate utf8_spanish2_ci NOT NULL,
  `dxe_estado` int(1) NOT NULL default '1',
  `dxe_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `dxe_usu_id` bigint(20) NOT NULL,
  `dxe_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`dxe_id`,`dxe_sede_id`),
  KEY `dxe_sede_id` (`dxe_sede_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos de la Empresa' AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `dep_empresa`
-- 

INSERT INTO `dep_empresa` VALUES (1, 1, 'Depto uno sede uno', '', 1, '2012-07-17 21:05:28', 1, 'MILE-PC');
INSERT INTO `dep_empresa` VALUES (2, 1, 'Depto dos SEDE uno', '', 1, '2012-07-17 21:06:04', 1, 'MILE-PC');
INSERT INTO `dep_empresa` VALUES (3, 2, 'Depto uno Sede dos', '', 1, '2012-07-17 21:08:17', 1, 'MILE-PC');
INSERT INTO `dep_empresa` VALUES (4, 2, 'Depto dos sede dos', '', 1, '2012-07-17 21:08:40', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `documento`
-- 

DROP TABLE IF EXISTS `documento`;
CREATE TABLE `documento` (
  `doc_id` int(11) NOT NULL auto_increment,
  `doc_usu_id` bigint(20) NOT NULL,
  `doc_tra_id` int(11) NOT NULL,
  `doc_ciu_id` int(11) unsigned NOT NULL,
  `doc_txd_id` int(11) NOT NULL,
  `doc_dxe_id` int(11) NOT NULL,
  `doc_exc_id` int(11) NOT NULL,
  `doc_usudestinoid` int(11) NOT NULL,
  `doc_usudestino` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `doc_fecrecibo` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `doc_fecdoc` date NOT NULL,
  `doc_asunto` text collate utf8_spanish2_ci NOT NULL,
  `doc_remitente` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `doc_obsdocmento` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `doc_estado` int(1) NOT NULL default '1',
  `doc_anexos` varchar(500) collate utf8_spanish2_ci NOT NULL,
  `doc_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`doc_id`),
  KEY `doc_tra_id` (`doc_tra_id`),
  KEY `doc_txd_id` (`doc_txd_id`),
  KEY `doc_dxe_id` (`doc_dxe_id`),
  KEY `doc_exc_id` (`doc_exc_id`),
  KEY `doc_usudestinoid` (`doc_usudestinoid`),
  KEY `doc_ciu_id` (`doc_ciu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos del tramite' AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `documento`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa`
-- 

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE `empresa` (
  `emp_id` int(11) NOT NULL auto_increment,
  `emp_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `emp_nit` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `emp_direccion` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `emp_telefono` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `emp_obs` text collate utf8_spanish2_ci NOT NULL,
  `emp_estado` int(1) NOT NULL default '1',
  `emp_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `emp_usu_id` bigint(20) NOT NULL,
  `emp_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas base' AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `empresa`
-- 

INSERT INTO `empresa` VALUES (1, 'Grupo Alianza', '88995511', 'cra 15 39 39', '7878787', '', 1, '2012-07-12 10:47:48', 1, 'SRVCONTABILIDAD');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresascliente_grupo`
-- 

DROP TABLE IF EXISTS `empresascliente_grupo`;
CREATE TABLE `empresascliente_grupo` (
  `exg_id` int(11) NOT NULL auto_increment,
  `exg_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `exg_estado` int(1) NOT NULL default '1',
  `exg_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `exg_usu_id` int(11) NOT NULL,
  `exg_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`exg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `empresascliente_grupo`
-- 

INSERT INTO `empresascliente_grupo` VALUES (0, 'Sin Grupo', 1, '2012-08-03 23:02:02', 0, '');
INSERT INTO `empresascliente_grupo` VALUES (1, 'GRUPO TEXTIFILH', 1, '2012-08-03 22:04:57', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresas_grupo`
-- 

DROP TABLE IF EXISTS `empresas_grupo`;
CREATE TABLE `empresas_grupo` (
  `gru_id` int(11) NOT NULL auto_increment,
  `gru_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `gru_obs` text collate utf8_spanish2_ci NOT NULL,
  `gru_estado` int(1) NOT NULL default '1',
  `gru_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `gru_usu_id` bigint(20) NOT NULL,
  `gru_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`gru_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tamaño empresas' AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `empresas_grupo`
-- 

INSERT INTO `empresas_grupo` VALUES (1, 'Grande', 'Grupo Grande de Empresas Cliente', 1, '2012-07-11 18:23:05', 1, 'MILE-PC');
INSERT INTO `empresas_grupo` VALUES (2, 'PEQUENA', '', 1, '2012-07-10 20:54:22', 1, 'MILE-PC');
INSERT INTO `empresas_grupo` VALUES (3, 'Mediana', '', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa_cliente`
-- 

DROP TABLE IF EXISTS `empresa_cliente`;
CREATE TABLE `empresa_cliente` (
  `exc_id` int(11) NOT NULL auto_increment,
  `exc_exg_id` int(11) NOT NULL,
  `exc_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `exc_usu_id` bigint(20) NOT NULL,
  `exc_txe_id` int(11) NOT NULL COMMENT 'Tipo Empresa',
  `exc_gru_id` int(11) NOT NULL,
  `exc_nombre` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `exc_nit` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `exc_direccion` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `exc_fijo` int(11) NOT NULL,
  `exc_celular` int(11) NOT NULL,
  `exc_cargo` varchar(150) collate utf8_spanish2_ci NOT NULL COMMENT 'Cargo Contacto',
  `exc_contacto` varchar(150) collate utf8_spanish2_ci NOT NULL COMMENT 'Responsable Empresa Cliente',
  `exc_mail` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `exc_res_id` bigint(20) NOT NULL COMMENT 'Usuario Responsable Alianza',
  `exc_estado` int(1) NOT NULL default '1',
  `exc_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`exc_id`,`exc_txe_id`),
  KEY `fk_grupo` (`exc_gru_id`),
  KEY `fk_tipoempresacliente` (`exc_txe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Cliente' AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `empresa_cliente`
-- 

INSERT INTO `empresa_cliente` VALUES (1, 0, '2012-07-28 00:00:15', 1, 3, 1, 'ARP Milenita Amaya de la Rosa', '654390', 'cra 28 calle 53', 6898284, 2147483647, '', 'Milena Martinez de la Rosa', 'mil@mail.com', 4, 1, 'MILE-PC');
INSERT INTO `empresa_cliente` VALUES (2, 1, '2012-08-03 22:08:02', 1, 15, 1, 'FILIBERTO HERNANDEZ', '888899543', '', 0, 0, '', '', 'mmmm', 1, 1, '');
INSERT INTO `empresa_cliente` VALUES (3, 1, '2012-08-03 22:09:08', 1, 15, 1, 'FILIBERTO HERNANDEZ', '888899543', 'dir', 88, 99, '', '', 'mmmm', 1, 0, '');
INSERT INTO `empresa_cliente` VALUES (4, 1, '2012-08-03 22:11:56', 1, 15, 1, 'LUZ MERY URIBE', '88556', 'calle', 7896543, 300678945, 'Doctor', 'Maria Perez', 'mail@mail.com', 1, 1, '');
INSERT INTO `empresa_cliente` VALUES (5, 1, '2012-08-03 22:13:01', 1, 15, 1, 'DIEGO HERNANDEZ', '8855676', 'calle', 7896543, 300678945, 'Doctor', 'Maria Perez', 'mail@mail.com', 1, 1, '');
INSERT INTO `empresa_cliente` VALUES (6, 1, '2012-08-03 22:13:46', 1, 15, 1, 'DANIEL HERNANDEZ', '8855688', 'calle', 7896543, 300678945, 'Doctor', 'Maria Perez', 'mail@mail.com', 1, 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa_sedes`
-- 

DROP TABLE IF EXISTS `empresa_sedes`;
CREATE TABLE `empresa_sedes` (
  `sede_id` int(11) NOT NULL auto_increment,
  `sede_emp_id` int(11) NOT NULL,
  `sede_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `sede_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `sede_estado` int(1) NOT NULL default '1',
  `sede_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `sede_usu_id` bigint(20) NOT NULL,
  `sede_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`sede_id`,`sede_emp_id`),
  KEY `fk_empresabase` (`sede_emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Base' AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `empresa_sedes`
-- 

INSERT INTO `empresa_sedes` VALUES (1, 1, 'Sede uno prueba', '', 1, '2012-07-17 21:04:18', 1, 'MILE-PC');
INSERT INTO `empresa_sedes` VALUES (2, 1, 'sede dos prueba', '', 1, '2012-07-17 21:04:43', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `modulo`
-- 

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE `modulo` (
  `mod_id` int(11) NOT NULL auto_increment,
  `mod_nombre` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `mod_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`mod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `modulo`
-- 

INSERT INTO `modulo` VALUES (1, 'Configuración', 1);
INSERT INTO `modulo` VALUES (2, 'Gestión Trámites', 1);
INSERT INTO `modulo` VALUES (3, 'Gestión Usuarios', 1);
INSERT INTO `modulo` VALUES (4, 'Estadísticas', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `modulo_perfil`
-- 

DROP TABLE IF EXISTS `modulo_perfil`;
CREATE TABLE `modulo_perfil` (
  `mxp_id` int(11) NOT NULL auto_increment,
  `mxp_mod_id` int(11) NOT NULL,
  `mxp_per_id` int(11) NOT NULL,
  `mxp_estado` int(11) NOT NULL default '1',
  PRIMARY KEY  (`mxp_id`),
  KEY `fk_modulo` (`mxp_mod_id`),
  KEY `mxp_per_id` (`mxp_per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Modulos por perfil' AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `modulo_perfil`
-- 

INSERT INTO `modulo_perfil` VALUES (1, 1, 1, 1);
INSERT INTO `modulo_perfil` VALUES (2, 2, 1, 1);
INSERT INTO `modulo_perfil` VALUES (3, 3, 1, 1);
INSERT INTO `modulo_perfil` VALUES (4, 4, 1, 1);
INSERT INTO `modulo_perfil` VALUES (5, 2, 6, 1);
INSERT INTO `modulo_perfil` VALUES (6, 4, 6, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `parametros`
-- 

DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `par_id` int(11) NOT NULL auto_increment,
  `par_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `par_texto` varchar(500) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`par_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `parametros`
-- 

INSERT INTO `parametros` VALUES (1, 'pie_home', 'Derechos Reservados Centro de Soluciones 2012&copy;');
INSERT INTO `parametros` VALUES (2, 'titulo_home', '||| SISTEMA CENTRAL DE TRAMITES Y SOLUCIONES |||');
INSERT INTO `parametros` VALUES (3, 'mailadministrador', 'milenaamaya@gmail.com');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `perfil`
-- 

DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `per_id` int(11) NOT NULL auto_increment,
  `per_nombre` varchar(150) collate utf8_spanish2_ci NOT NULL,
  `per_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `per_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `perfil`
-- 

INSERT INTO `perfil` VALUES (1, 'SuperAdministrador', '', 1);
INSERT INTO `perfil` VALUES (2, 'Tramites', '', 1);
INSERT INTO `perfil` VALUES (3, 'Usuarios', '', 1);
INSERT INTO `perfil` VALUES (4, 'Estadística', '', 1);
INSERT INTO `perfil` VALUES (5, 'Consulta', '', 1);
INSERT INTO `perfil` VALUES (6, 'Empresa Externa', 'Puede ingresar tramites, consultar un tramite especifico. No puede modificar nada, puede consultar', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `textos`
-- 

DROP TABLE IF EXISTS `textos`;
CREATE TABLE `textos` (
  `txt_id` int(20) NOT NULL auto_increment,
  `txt_pagina` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txt_texto` text collate utf8_spanish2_ci NOT NULL,
  `txt_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `textos`
-- 

INSERT INTO `textos` VALUES (1, 'configuracion', 'Esta sección es para administrar los valores de las variables de la aplicación.\r\n  Puede ingresar nuevos registros, editar o modificar los existentes y eliminarlos.', 1);
INSERT INTO `textos` VALUES (2, 'menu', 'El <b>SistemaCentral de Trámites y Soluciones</b> es un Sistema de Trámites solicitados por entidades , clientes y/o áreas internas de la empresa que permitirá ingresar la información necesaria de los trámites y documentos asociados (recibidos, enviados, diligenciados) para gestionarlos adecuadamente dentro de los límites de tiempo establecidos, permitiendo controlar los tiempos máximos y los tiempos esperados en la ejecución de los pasos o etapas de los trámites de acuerdo con el tema y/o su complejidad facilitando así el cumplimiento de los acuerdos de servicio logrando un alto nivel de calidad del servicio.<br><br>\r\nEl principal objetivo del Sistema (<b> SistemaCentral de Trámites y Soluciones </b>) es permitir que las empresas trabajen de manera colaborativa en la gestión de los trámites: el diligenciamiento, el envío y recepción de documentos mediante un portal Web que facilite la administración y tracking (seguimiento) de los mismos para agilizar los procesos de respuesta de los trámites.', 1);
INSERT INTO `textos` VALUES (3, 'tramites', 'En esta sección usted puede crear un trámite, agregarle el o los  documentos si lleva anexos. En esta sección usted podrá consultar y anotar observaciones para hacerle seguimiento de acuerdo con las directrices del diligenciamiento del trámite.', 1);
INSERT INTO `textos` VALUES (4, 'index1', ' Debe ingresar sus datos para ingresar al sistema, si no los tiene, por favor registrese en la parte inferior está la opción.', 1);
INSERT INTO `textos` VALUES (5, 'index2', 'Debe ingresar el código del trámite para consultar su seguimiento.', 1);
INSERT INTO `textos` VALUES (6, 'menu1', 'Esta sección es para administrar los valores de las variables de la aplicación. Puede ingresar nuevos registros, editar o modificar los existentes y eliminarlos.', 1);
INSERT INTO `textos` VALUES (7, 'menu2', 'En esta sección usted puede crear un trámite, agregarle el o los documentos si lleva anexos. En esta sección usted podrá consultar y anotar observaciones para hacerle seguimiento de acuerdo con las directrices del diligenciamiento del trámite. ', 1);
INSERT INTO `textos` VALUES (8, 'tipotramite', 'Es la Clasificación de los trámites en la empresa.', 1);
INSERT INTO `textos` VALUES (9, 'nombretramite', 'Es el nombre que debe ser asignado para este tramite.', 1);
INSERT INTO `textos` VALUES (10, 'usuarios', 'En esta sección usted podrá administrar los usuarios de esta aplicación.', 1);
INSERT INTO `textos` VALUES (11, 'informes', 'En esta sección se podrá consultar el historial de los trámites enviados y recibidos por la empresa y exportarlos a excel para facilitar su análisis', 1);
INSERT INTO `textos` VALUES (12, 'victor', '', 1);
INSERT INTO `textos` VALUES (13, 'victor', '', 1);
INSERT INTO `textos` VALUES (14, 'victor', '', 1);
INSERT INTO `textos` VALUES (15, 'victor', '', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_documento`
-- 

DROP TABLE IF EXISTS `tipo_documento`;
CREATE TABLE `tipo_documento` (
  `txd_id` int(11) NOT NULL auto_increment,
  `txd_nombre` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `txd_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txd_estado` int(1) NOT NULL default '1',
  `txd_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txd_usu_id` int(11) NOT NULL,
  `txd_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tipo_documento`
-- 

INSERT INTO `tipo_documento` VALUES (1, 'Carta', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_documento` VALUES (2, 'Memo', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_documento` VALUES (3, 'Acta', 'retorica o literal', 1, '2012-06-29 23:00:36', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_empresacliente`
-- 

DROP TABLE IF EXISTS `tipo_empresacliente`;
CREATE TABLE `tipo_empresacliente` (
  `txe_id` int(11) NOT NULL auto_increment,
  `txe_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txe_descricion` text collate utf8_spanish2_ci NOT NULL,
  `txe_estado` int(1) NOT NULL default '1',
  `txe_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txe_usu_id` int(11) NOT NULL,
  `txe_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tipo Empresas Cliente' AUTO_INCREMENT=16 ;

-- 
-- Volcar la base de datos para la tabla `tipo_empresacliente`
-- 

INSERT INTO `tipo_empresacliente` VALUES (1, 'Propias', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (2, 'EPS', 'La definición de EPS hace referencia a las entidades prestadoras de salud, las cuales pueden ser tanto empresas como instituciones de naturaleza privada o publica, las cuales brindan una completa protección en salud, al permitir a sus usuarios el acceso a diferentes medios de atención, por medio de citas medicas de carácter preventivo, tratamientos y terapias, a partir de lo cual se dictan recetas medicas y se brindan medicamentos, también se atienden casos de urgencias, citas odontológicas y muchos otros medios de prestación de servicios de salud, de tal forma son muchas las maneras de brindar los servicios que se derivan de la definición de EPS.', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (3, 'ARP', 'El Sistema General de Riesgos Profesionales es el conjunto de entidades publicas y privadas, normas y\r\nprocedimientos, destinados a prevenir, proteger y atender a los trabajadores de los efectos de las enfermedades y\r\nlos accidentes que puedan ocurrirles con ocasion o como consecuencia del trabajo que desarrollan.', 1, '2012-06-29 19:15:10', 1, 'MILE-PC');
INSERT INTO `tipo_empresacliente` VALUES (4, 'Fondo de Pensiones', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (5, 'JUZGADOS CIVILES CTO.', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (6, 'JUZGADOS PENALES', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (7, 'JUZGADOS CIVILES MUNIC.', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (8, 'ENTIDADES ESTATALES TRIBUTARIAS', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (9, 'ENTIDADES DE CONTROL', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (10, 'CLIENTE INDIVIDUAL I', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (11, 'CLIENTE INDIVIDUAL II', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (12, 'CLIENTE INDIVIDUAL III', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (13, 'CLIENTE GRUPO I', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (14, 'CLIENTE GRUPO II', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tipo_empresacliente` VALUES (15, 'CLIENTE GRUPO III', '', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite`
-- 

DROP TABLE IF EXISTS `tramite`;
CREATE TABLE `tramite` (
  `tra_id` int(11) NOT NULL auto_increment,
  `tra_usu_id` int(11) NOT NULL,
  `tra_txt_id` int(11) NOT NULL COMMENT 'Tipo Tramite',
  `tra_ext_id` int(11) NOT NULL COMMENT 'Estado Tramite',
  `tra_cxt_id` int(11) NOT NULL COMMENT 'Categoria Tramite',
  `tra_txo_id` int(11) NOT NULL COMMENT 'Tipo Origen Tramite',
  `tra_ciu_id` int(11) NOT NULL,
  `tra_axe_id` int(11) NOT NULL,
  `tra_car_id` int(11) NOT NULL,
  `tra_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `tra_nombre` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `tra_prioridad` int(1) NOT NULL,
  `tra_consecutivo` varchar(50) collate utf8_spanish2_ci NOT NULL default '"NO"',
  `tra_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `tra_estado` int(1) NOT NULL default '1',
  `tra_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`tra_id`,`tra_consecutivo`),
  KEY `tra_txt_id` (`tra_txt_id`,`tra_ext_id`,`tra_cxt_id`,`tra_txo_id`,`tra_usu_id`),
  KEY `tra_axe_id` (`tra_axe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla base de los tramites' AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `tramite`
-- 

INSERT INTO `tramite` VALUES (1, 1, 3, 7, 1, 1, 144, 1, 0, '2012-08-02 17:23:00', 'madia', 2, 'DSU201224000', 'procesion', 1, 'MILE-PC');
INSERT INTO `tramite` VALUES (2, 1, 12, 1, 1, 1, 145, 1, 0, '2012-08-02 17:25:14', 'cobrito', 5, 'DSU201224001', 'algunos', 1, 'MILE-PC');
INSERT INTO `tramite` VALUES (3, 1, 2, 7, 1, 1, 1076, 1, 0, '2012-08-02 18:27:13', 'reciperti', 5, 'DSU201224002', 'observaciones tramite', 1, 'MILE-PC');
INSERT INTO `tramite` VALUES (4, 1, 14, 7, 2, 2, 230, 1, 1, '2012-08-02 18:57:06', 'queja', 4, 'DSU201224003', 'bjhvy vivienda', 1, 'MILE-PC');
INSERT INTO `tramite` VALUES (5, 1, 4, 7, 1, 1, 154, 1, 1, '2012-08-02 18:58:08', 'jijiji', 4, 'DSU201224004', 'prioridad 5', 1, 'MILE-PC');
INSERT INTO `tramite` VALUES (6, 1, 16, 7, 1, 1, 646, 1, 1, '2012-08-02 21:28:05', 'quejita milena', 5, 'DSU201224005', 'prioridAD 5 LA MAS ALTA', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_adicionales`
-- 

DROP TABLE IF EXISTS `tramite_adicionales`;
CREATE TABLE `tramite_adicionales` (
  `pxa_id` int(11) NOT NULL auto_increment,
  `pxa_tram_id` int(11) NOT NULL,
  `pxa_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `pxa_nombre` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `pxa_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `pxa_limite` int(11) NOT NULL,
  `pxa_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`pxa_id`),
  KEY `pxa_tram_id` (`pxa_tram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='pasos adicionales en el tramite' AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tramite_adicionales`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_categoria`
-- 

DROP TABLE IF EXISTS `tramite_categoria`;
CREATE TABLE `tramite_categoria` (
  `cxt_id` int(11) NOT NULL auto_increment,
  `cxt_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `cxt_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `cxt_estado` int(1) NOT NULL default '1',
  `cxt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `cxt_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`cxt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Es informativo o requiere respuesta' AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tramite_categoria`
-- 

INSERT INTO `tramite_categoria` VALUES (1, 'Requiere Respuesta', 'Indica que el trámite requiere después de su dilingeciamiento una respuesta directa al remitente.', 1, '2012-05-19 22:04:20', 1);
INSERT INTO `tramite_categoria` VALUES (2, 'Solo Informativo', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_documentos`
-- 

DROP TABLE IF EXISTS `tramite_documentos`;
CREATE TABLE `tramite_documentos` (
  `dxt_id` int(11) NOT NULL auto_increment,
  `dxt_tra_id` int(11) NOT NULL,
  `dxt_doc_id` int(11) NOT NULL,
  `dxt_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `dxt_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`dxt_id`),
  KEY `fk_tramite` (`dxt_tra_id`),
  KEY `fk_documento` (`dxt_doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos relacionados con el tramite' AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tramite_documentos`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_estado`
-- 

DROP TABLE IF EXISTS `tramite_estado`;
CREATE TABLE `tramite_estado` (
  `ext_id` int(11) NOT NULL auto_increment,
  `ext_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `ext_estado` int(1) NOT NULL default '1',
  `ext_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ext_usu_id` bigint(20) NOT NULL,
  `ext_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `tramite_estado`
-- 

INSERT INTO `tramite_estado` VALUES (1, 'Recibido primero', 1, '2012-05-17 11:20:13', 1, '');
INSERT INTO `tramite_estado` VALUES (2, 'En Proceso', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_estado` VALUES (3, 'Redireccionado', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_estado` VALUES (4, 'Prorrogado', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_estado` VALUES (5, 'Detenido', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_estado` VALUES (6, 'Finalizado', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_estado` VALUES (7, 'Asignado', 1, '2012-05-11 23:21:55', 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_frecuencia`
-- 

DROP TABLE IF EXISTS `tramite_frecuencia`;
CREATE TABLE `tramite_frecuencia` (
  `txf_id` int(11) NOT NULL auto_increment,
  `txf_nombre` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `txf_dias` int(5) NOT NULL,
  `txf_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txf_usu_id` int(11) NOT NULL,
  `txf_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `txf_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Frecuencia de los tramites en dias' AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `tramite_frecuencia`
-- 

INSERT INTO `tramite_frecuencia` VALUES (1, 'Diario', 1, '2012-07-11 21:11:47', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (2, 'Semanal', 8, '2012-07-08 19:09:17', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (3, 'Mensual', 30, '2012-07-10 20:56:44', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (4, 'Semestral', 180, '2012-07-10 20:57:06', 1, 'MILE-PC', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_observaciones`
-- 

DROP TABLE IF EXISTS `tramite_observaciones`;
CREATE TABLE `tramite_observaciones` (
  `txo_id` int(11) NOT NULL auto_increment,
  `txo_tra_id` int(11) NOT NULL,
  `txo_usu_id` int(11) NOT NULL,
  `txo_txe_id` int(11) NOT NULL COMMENT 'Tipo empresa Cliente',
  `txo_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txo_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txo_id`),
  KEY `txo_tra_id` (`txo_tra_id`),
  KEY `txo_usu_id` (`txo_usu_id`),
  KEY `txo_txe_id` (`txo_txe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `tramite_observaciones`
-- 

INSERT INTO `tramite_observaciones` VALUES (1, 1, 1, 7, '2012-08-02 17:23:00', 'dos dos', 1);
INSERT INTO `tramite_observaciones` VALUES (2, 3, 1, 7, '2012-08-02 18:27:13', 'asignado a milena', 1);
INSERT INTO `tramite_observaciones` VALUES (3, 4, 1, 7, '2012-08-02 18:57:06', 'nijihu', 1);
INSERT INTO `tramite_observaciones` VALUES (4, 5, 1, 7, '2012-08-02 18:58:08', 'milena', 1);
INSERT INTO `tramite_observaciones` VALUES (5, 6, 1, 7, '2012-08-02 21:28:05', 'LA UNICA UNICA', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_pasos`
-- 

DROP TABLE IF EXISTS `tramite_pasos`;
CREATE TABLE `tramite_pasos` (
  `pxt_id` int(11) NOT NULL auto_increment,
  `pxt_txt_id` int(11) NOT NULL,
  `pxt_txp_id` int(1) NOT NULL COMMENT 'prefijo',
  `pxt_car_id` int(11) NOT NULL,
  `pxt_nombre` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `pxt_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `pxt_tmpolimite` int(11) NOT NULL,
  `pxt_uxt_id` int(1) NOT NULL,
  `pxt_estado` int(1) NOT NULL default '1',
  `pxt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `pxt_usu_id` bigint(20) NOT NULL,
  `pxt_equipo` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `pxt_ip` varchar(20) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`pxt_id`,`pxt_txt_id`),
  KEY `fk_tipotramite` (`pxt_txt_id`),
  KEY `bk_cargo` (`pxt_car_id`),
  KEY `pxt_uxt_id` (`pxt_uxt_id`),
  KEY `pxt_txp_id` (`pxt_txp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Pasos de los Tipo_Tramites' AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tramite_pasos`
-- 

INSERT INTO `tramite_pasos` VALUES (1, 6, 1, 3, 'Solicitud Reunion Externa', 'Es una Prueba', 4, 2, 1, '2012-08-03 15:59:24', 1, 'MILE-PC', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_prefijo`
-- 

DROP TABLE IF EXISTS `tramite_prefijo`;
CREATE TABLE `tramite_prefijo` (
  `txp_id` int(11) NOT NULL auto_increment,
  `txp_nombre` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `txp_descripcion` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txp_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tramite_prefijo`
-- 

INSERT INTO `tramite_prefijo` VALUES (1, 'pre (Dentro del proceso del trámite)', 'DENTRO DEL PROCESO DEL TRAMITE', 1);
INSERT INTO `tramite_prefijo` VALUES (2, 'pos (Posterior al cierre del trámite)', 'POSTERIOR AL CIERRE DEL TRAMITE', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_reasignacion`
-- 

DROP TABLE IF EXISTS `tramite_reasignacion`;
CREATE TABLE `tramite_reasignacion` (
  `txr_id` int(11) NOT NULL auto_increment,
  `txr_tra_id` int(11) NOT NULL,
  `txr_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txr_usuinicial` int(11) NOT NULL,
  `txt_usuasig` int(11) NOT NULL,
  `txt_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `txr_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txr_id`),
  KEY `txr_tra_id` (`txr_tra_id`,`txr_usuinicial`,`txt_usuasig`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `tramite_reasignacion`
-- 

INSERT INTO `tramite_reasignacion` VALUES (1, 1, '2012-08-02 17:23:00', 1, 1, 'dos dos', 1);
INSERT INTO `tramite_reasignacion` VALUES (2, 3, '2012-08-02 18:27:13', 1, 1, 'asignado a milena', 1);
INSERT INTO `tramite_reasignacion` VALUES (3, 4, '2012-08-02 18:57:06', 1, 1, 'nijihu', 1);
INSERT INTO `tramite_reasignacion` VALUES (4, 5, '2012-08-02 18:58:08', 1, 1, 'milena', 1);
INSERT INTO `tramite_reasignacion` VALUES (5, 6, '2012-08-02 21:28:05', 1, 1, 'LA UNICA UNICA', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_tipo`
-- 

DROP TABLE IF EXISTS `tramite_tipo`;
CREATE TABLE `tramite_tipo` (
  `txt_id` int(11) NOT NULL auto_increment,
  `txt_txf_id` int(11) NOT NULL default '1',
  `txt_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txt_fechaini` date NOT NULL default '2012-01-01',
  `txt_fechafin` date NOT NULL default '2012-01-01',
  `txt_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txt_estado` int(1) NOT NULL default '1',
  `txt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txt_usu_id` bigint(20) NOT NULL,
  `txt_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txt_id`),
  KEY `txt_txf_id` (`txt_txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=17 ;

-- 
-- Volcar la base de datos para la tabla `tramite_tipo`
-- 

INSERT INTO `tramite_tipo` VALUES (1, 1, 'COMUNICADO ENVIADO', '2012-12-12', '2012-01-01', 'Informacion oficial escrita y autorizada que se facilita a las personas como resumen de una reunion o hechos de interes general.oo', 1, '2012-05-18 22:45:46', 1, '');
INSERT INTO `tramite_tipo` VALUES (2, 1, 'COMUNICADO  RECIBIDO', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (3, 1, 'REQUERIMIENTO ENVIADO', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (4, 1, 'REQUERIMIENTO RECIBIDO', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (5, 1, 'ACTA REUNION INTERNA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (6, 1, 'ACTA REUNION EXTERNA', '2012-09-01', '2013-09-01', 'Un aÃ±o', 1, '2012-08-03 16:56:43', 1, 'MILE-PC');
INSERT INTO `tramite_tipo` VALUES (7, 1, 'JURIDICA ENVIADA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (8, 1, 'JURIDICA RECIBIDA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (9, 1, 'TRIBUTARIA ENVIADA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (10, 1, 'TRIBUTARIA RECIBIDA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (11, 1, 'COBRO CLIENTE', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (12, 1, 'COBRO PROVEEDOR', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (13, 1, 'QUEJA INTERNA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (14, 1, 'QUEJA EXTERNA EMPL. MISION', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (15, 1, 'QUEJA EXTERNA EMPRESA USUARIA', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `tramite_tipo` VALUES (16, 1, 'QUEJA CLIENTE CONSTRUCCION', '2012-12-12', '2012-01-01', '', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_tipo_origen`
-- 

DROP TABLE IF EXISTS `tramite_tipo_origen`;
CREATE TABLE `tramite_tipo_origen` (
  `txo_id` int(11) NOT NULL auto_increment,
  `txo_nombre` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `txo_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL default '1',
  `txo_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txo_usu_id` bigint(20) NOT NULL,
  `txo_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Origen interno o externo' AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tramite_tipo_origen`
-- 

INSERT INTO `tramite_tipo_origen` VALUES (1, 'Interno (tramite en la propia empresa)', 'Se refiere a un tramite en la propia empresa', 1, '2012-07-11 18:07:05', 1, 'MILE-PC');
INSERT INTO `tramite_tipo_origen` VALUES (2, 'Externa (tramite proveniente de una entidad externa))', 'Se refiere a que el tramite es para o desde una empresa cliente', 1, '2012-07-11 18:06:54', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `unidad_tiempo`
-- 

DROP TABLE IF EXISTS `unidad_tiempo`;
CREATE TABLE `unidad_tiempo` (
  `uxt_id` int(1) NOT NULL auto_increment,
  `uxt_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `uxt_estado` int(11) NOT NULL,
  PRIMARY KEY  (`uxt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `unidad_tiempo`
-- 

INSERT INTO `unidad_tiempo` VALUES (1, 'Dias', 1);
INSERT INTO `unidad_tiempo` VALUES (2, 'Horas', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL auto_increment,
  `usu_act_id` enum('0','1') collate utf8_spanish2_ci NOT NULL default '1',
  `usu_usu_id` int(11) NOT NULL default '1' COMMENT 'Usuario que ingresa',
  `usu_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `usu_exc_id` int(20) NOT NULL COMMENT 'id Empresa Cliente',
  `usu_car_id` int(11) NOT NULL,
  `usu_per_id` int(11) NOT NULL,
  `usu_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `usu_apel` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `usu_corto` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `usu_cedula` int(11) NOT NULL,
  `usu_user` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `usu_password` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `usu_emailper` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `usu_emailcor` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `usu_dir` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `usu_fijo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `usu_celular` int(11) NOT NULL,
  `usu_obs` text collate utf8_spanish2_ci NOT NULL,
  `usu_estado` int(1) NOT NULL default '1',
  `usu_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`usu_id`),
  UNIQUE KEY `usu_cedula` (`usu_cedula`),
  KEY `perfil` (`usu_per_id`),
  KEY `fk_cargo` (`usu_car_id`),
  KEY `usu_exc_id` (`usu_exc_id`),
  KEY `usu_usu_id` (`usu_usu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 

INSERT INTO `usuario` VALUES (1, '1', 1, '2012-04-18 18:51:04', 0, 1, 1, 'Milena', ' Amaya de la Rosa', 'Pepito Perez', 78, 'mile', 'ea08e678edbf8892b8d67fc36f4a3bf9', 'milenaamaya@gmail.com', 'milenita@mail.com', 'direccion', '0', 0, '', 1, '');
INSERT INTO `usuario` VALUES (2, '', 1, '2012-04-18 18:51:04', 1, 1, 1, 'Jorge', 'Bucay', 'Jorgito', 114578, 'mau', 'c20ad4d76fe97759aa27a0c99bff6710', 'milenaamaya@gmail.com', 'milenita@mail.com', 'Direccion', '678', 315667, 'Algunas observaciones', 0, '');
INSERT INTO `usuario` VALUES (3, '', 1, '2012-04-18 18:51:04', 1, 1, 1, 'Alejandra', 'Pizarnik', 'Ale Pizar', 52035813, 'ali', 'ea08e678edbf8892b8d67fc36f4a3bf9', 'milenaamaya@gmail.com', 'milenita@mail.com', 'Direccion', '6898387', 2147483647, 'nino', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usu_log`
-- 

DROP TABLE IF EXISTS `usu_log`;
CREATE TABLE `usu_log` (
  `uxl_id` bigint(20) NOT NULL auto_increment,
  `uxl_usu_id` bigint(20) NOT NULL,
  `uxl_activo` enum('1','0') collate utf8_spanish2_ci NOT NULL default '0',
  `uxl_accion` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `uxl_equipo` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `uxl_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`uxl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla Verifica Usuario Activo' AUTO_INCREMENT=93 ;

-- 
-- Volcar la base de datos para la tabla `usu_log`
-- 

INSERT INTO `usu_log` VALUES (1, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 15:34:45');
INSERT INTO `usu_log` VALUES (2, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:45:13');
INSERT INTO `usu_log` VALUES (3, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:46:30');
INSERT INTO `usu_log` VALUES (4, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:46:54');
INSERT INTO `usu_log` VALUES (5, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:49:39');
INSERT INTO `usu_log` VALUES (6, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 15:49:50');
INSERT INTO `usu_log` VALUES (7, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:50:10');
INSERT INTO `usu_log` VALUES (8, 1, '', 'Ingreso registro tabla ciudad', 'MILE-PC', '2012-07-27 15:57:56');
INSERT INTO `usu_log` VALUES (9, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 16:02:09');
INSERT INTO `usu_log` VALUES (10, 1, '', 'Modifico tabla alianza_emp', 'MILE-PC', '2012-07-27 16:10:41');
INSERT INTO `usu_log` VALUES (11, 1, '', 'Ingreso registro tabla alianza_sedes', 'MILE-PC', '2012-07-27 16:11:10');
INSERT INTO `usu_log` VALUES (12, 1, '', 'Ingreso registro tabla alianza_sedes', 'MILE-PC', '2012-07-27 16:12:04');
INSERT INTO `usu_log` VALUES (13, 1, '', 'Ingreso registro tabla alianza_sedes', 'MILE-PC', '2012-07-27 16:17:59');
INSERT INTO `usu_log` VALUES (14, 1, '', 'Ingreso registro tabla alianza_sedes', 'MILE-PC', '2012-07-27 16:19:57');
INSERT INTO `usu_log` VALUES (15, 1, '', 'Ingreso registro tabla alianza_sedes', 'MILE-PC', '2012-07-27 16:20:26');
INSERT INTO `usu_log` VALUES (16, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 16:34:31');
INSERT INTO `usu_log` VALUES (17, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 18:18:34');
INSERT INTO `usu_log` VALUES (18, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 20:17:40');
INSERT INTO `usu_log` VALUES (19, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 20:49:03');
INSERT INTO `usu_log` VALUES (20, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 21:22:05');
INSERT INTO `usu_log` VALUES (21, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 21:41:37');
INSERT INTO `usu_log` VALUES (22, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 21:59:54');
INSERT INTO `usu_log` VALUES (23, 1, '', 'Ingreso registro tabla empresa_cliente', 'MILE-PC', '2012-07-27 23:00:10');
INSERT INTO `usu_log` VALUES (24, 1, '', 'Modifico tabla empresa_cliente', 'MILE-PC', '2012-07-27 23:00:33');
INSERT INTO `usu_log` VALUES (25, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-27 23:42:39');
INSERT INTO `usu_log` VALUES (26, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 15:01:54');
INSERT INTO `usu_log` VALUES (27, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 15:22:32');
INSERT INTO `usu_log` VALUES (28, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 16:09:28');
INSERT INTO `usu_log` VALUES (29, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 17:03:40');
INSERT INTO `usu_log` VALUES (30, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 17:30:24');
INSERT INTO `usu_log` VALUES (31, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 21:15:01');
INSERT INTO `usu_log` VALUES (32, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 21:33:31');
INSERT INTO `usu_log` VALUES (33, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 21:45:14');
INSERT INTO `usu_log` VALUES (34, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 21:57:43');
INSERT INTO `usu_log` VALUES (35, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 22:15:59');
INSERT INTO `usu_log` VALUES (36, 1, '', 'Modifico tabla depxdepal', 'MILE-PC', '2012-07-30 22:16:21');
INSERT INTO `usu_log` VALUES (37, 1, '', 'Ingreso registro tabla depxdepal', 'MILE-PC', '2012-07-30 22:17:02');
INSERT INTO `usu_log` VALUES (38, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-30 22:34:28');
INSERT INTO `usu_log` VALUES (39, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-07-31 21:43:48');
INSERT INTO `usu_log` VALUES (40, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 07:26:15');
INSERT INTO `usu_log` VALUES (41, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 07:27:56');
INSERT INTO `usu_log` VALUES (42, 1, '', 'Modificar Usuarios', 'SRVCONTABILIDAD', '2012-08-01 07:41:31');
INSERT INTO `usu_log` VALUES (43, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 08:04:17');
INSERT INTO `usu_log` VALUES (44, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 08:10:23');
INSERT INTO `usu_log` VALUES (45, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 08:35:57');
INSERT INTO `usu_log` VALUES (46, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 08:58:42');
INSERT INTO `usu_log` VALUES (47, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 09:11:32');
INSERT INTO `usu_log` VALUES (48, 1, '', 'Borrar Usuarios', 'SRVCONTABILIDAD', '2012-08-01 09:12:19');
INSERT INTO `usu_log` VALUES (49, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 13:13:19');
INSERT INTO `usu_log` VALUES (50, 1, '', 'Ingreso al SCTS', 'SRVCONTABILIDAD', '2012-08-01 18:02:56');
INSERT INTO `usu_log` VALUES (51, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-01 18:39:19');
INSERT INTO `usu_log` VALUES (52, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-01 19:03:39');
INSERT INTO `usu_log` VALUES (53, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 09:43:58');
INSERT INTO `usu_log` VALUES (54, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 10:47:31');
INSERT INTO `usu_log` VALUES (55, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 11:14:00');
INSERT INTO `usu_log` VALUES (56, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 11:18:33');
INSERT INTO `usu_log` VALUES (57, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 12:08:36');
INSERT INTO `usu_log` VALUES (58, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 13:04:21');
INSERT INTO `usu_log` VALUES (59, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 14:05:00');
INSERT INTO `usu_log` VALUES (60, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 14:44:12');
INSERT INTO `usu_log` VALUES (61, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 15:14:24');
INSERT INTO `usu_log` VALUES (62, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 15:40:29');
INSERT INTO `usu_log` VALUES (63, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 16:57:02');
INSERT INTO `usu_log` VALUES (64, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 18:25:58');
INSERT INTO `usu_log` VALUES (65, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 18:57:14');
INSERT INTO `usu_log` VALUES (66, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 19:03:46');
INSERT INTO `usu_log` VALUES (67, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 19:20:05');
INSERT INTO `usu_log` VALUES (68, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 20:00:13');
INSERT INTO `usu_log` VALUES (69, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 20:17:43');
INSERT INTO `usu_log` VALUES (70, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 21:22:24');
INSERT INTO `usu_log` VALUES (71, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 21:54:19');
INSERT INTO `usu_log` VALUES (72, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-02 22:16:30');
INSERT INTO `usu_log` VALUES (73, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 15:11:18');
INSERT INTO `usu_log` VALUES (74, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 15:56:25');
INSERT INTO `usu_log` VALUES (75, 1, '', 'Modifico tabla tramite_tipo', 'MILE-PC', '2012-08-03 15:57:47');
INSERT INTO `usu_log` VALUES (76, 1, '', 'Ingreso registro tabla tramite_pasos', 'MILE-PC', '2012-08-03 15:59:24');
INSERT INTO `usu_log` VALUES (77, 1, '', 'Modifico tabla tramite_tipo', 'MILE-PC', '2012-08-03 15:59:40');
INSERT INTO `usu_log` VALUES (78, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 19:27:09');
INSERT INTO `usu_log` VALUES (79, 5, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 20:03:51');
INSERT INTO `usu_log` VALUES (80, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 20:34:08');
INSERT INTO `usu_log` VALUES (81, 5, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 20:34:42');
INSERT INTO `usu_log` VALUES (82, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 21:02:54');
INSERT INTO `usu_log` VALUES (83, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 21:50:08');
INSERT INTO `usu_log` VALUES (84, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 22:15:31');
INSERT INTO `usu_log` VALUES (85, 1, '', 'Modifico tabla alianza_emp', 'MILE-PC', '2012-08-03 22:16:20');
INSERT INTO `usu_log` VALUES (86, 1, '', 'Modifico tabla alianza_emp', 'MILE-PC', '2012-08-03 22:16:36');
INSERT INTO `usu_log` VALUES (87, 1, '', 'Modifico tabla alianza_emp', 'MILE-PC', '2012-08-03 22:17:13');
INSERT INTO `usu_log` VALUES (88, 1, '', 'Modifico tabla alianza_emp', 'MILE-PC', '2012-08-03 22:17:43');
INSERT INTO `usu_log` VALUES (89, 1, '', 'Borro registro tabla empresa_cliente', 'MILE-PC', '2012-08-03 22:34:25');
INSERT INTO `usu_log` VALUES (90, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-03 22:34:45');
INSERT INTO `usu_log` VALUES (91, 1, '', 'Ingreso al SCTS', 'MILE-PC', '2012-08-04 07:34:17');
INSERT INTO `usu_log` VALUES (92, 1, '1', 'Ingreso al SCTS', 'MILE-PC', '2012-08-04 08:34:03');

-- --------------------------------------------------------

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `alianza_dep`
-- 
ALTER TABLE `alianza_dep`
  ADD CONSTRAINT `alianza_dep_ibfk_1` FOREIGN KEY (`axe_axs_id`) REFERENCES `alianza_sedes` (`axs_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `cargos`
-- 
ALTER TABLE `cargos`
  ADD CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`car_dxe_id`) REFERENCES `dep_empresa` (`dxe_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `ciudad`
-- 
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`ciu_dep_id`) REFERENCES `departamento` (`dep_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `depxdepal`
-- 
ALTER TABLE `depxdepal`
  ADD CONSTRAINT `depxdepal_ibfk_1` FOREIGN KEY (`dxd_dxe_id`) REFERENCES `dep_empresa` (`dxe_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `depxdepal_ibfk_2` FOREIGN KEY (`dxd_axe_id`) REFERENCES `alianza_dep` (`axe_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `depxdepal_ibfk_3` FOREIGN KEY (`dxd_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `dep_empresa`
-- 
ALTER TABLE `dep_empresa`
  ADD CONSTRAINT `dep_empresa_ibfk_1` FOREIGN KEY (`dxe_sede_id`) REFERENCES `empresa_sedes` (`sede_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `documento`
-- 
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_4` FOREIGN KEY (`doc_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_5` FOREIGN KEY (`doc_txd_id`) REFERENCES `tipo_documento` (`txd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_6` FOREIGN KEY (`doc_dxe_id`) REFERENCES `dep_empresa` (`dxe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_7` FOREIGN KEY (`doc_exc_id`) REFERENCES `empresa_cliente` (`exc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_8` FOREIGN KEY (`doc_usudestinoid`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_9` FOREIGN KEY (`doc_ciu_id`) REFERENCES `ciudad` (`ciu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `empresa_cliente`
-- 
ALTER TABLE `empresa_cliente`
  ADD CONSTRAINT `empresa_cliente_ibfk_3` FOREIGN KEY (`exc_txe_id`) REFERENCES `tipo_empresacliente` (`txe_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `empresa_cliente_ibfk_4` FOREIGN KEY (`exc_gru_id`) REFERENCES `empresas_grupo` (`gru_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `empresa_sedes`
-- 
ALTER TABLE `empresa_sedes`
  ADD CONSTRAINT `empresa_sedes_ibfk_1` FOREIGN KEY (`sede_emp_id`) REFERENCES `empresa` (`emp_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `modulo_perfil`
-- 
ALTER TABLE `modulo_perfil`
  ADD CONSTRAINT `modulo_perfil_ibfk_1` FOREIGN KEY (`mxp_mod_id`) REFERENCES `modulo` (`mod_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `modulo_perfil_ibfk_3` FOREIGN KEY (`mxp_per_id`) REFERENCES `perfil` (`per_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tramite`
-- 
ALTER TABLE `tramite`
  ADD CONSTRAINT `tramite_ibfk_1` FOREIGN KEY (`tra_txt_id`) REFERENCES `tramite_tipo` (`txt_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_ibfk_2` FOREIGN KEY (`tra_axe_id`) REFERENCES `alianza_dep` (`axe_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_adicionales`
-- 
ALTER TABLE `tramite_adicionales`
  ADD CONSTRAINT `tramite_adicionales_ibfk_1` FOREIGN KEY (`pxa_tram_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tramite_documentos`
-- 
ALTER TABLE `tramite_documentos`
  ADD CONSTRAINT `tramite_documentos_ibfk_2` FOREIGN KEY (`dxt_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_documentos_ibfk_5` FOREIGN KEY (`dxt_doc_id`) REFERENCES `documento` (`doc_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_observaciones`
-- 
ALTER TABLE `tramite_observaciones`
  ADD CONSTRAINT `tramite_observaciones_ibfk_2` FOREIGN KEY (`txo_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tramite_observaciones_ibfk_3` FOREIGN KEY (`txo_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tramite_observaciones_ibfk_4` FOREIGN KEY (`txo_txe_id`) REFERENCES `tramite_estado` (`ext_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tramite_pasos`
-- 
ALTER TABLE `tramite_pasos`
  ADD CONSTRAINT `tramite_pasos_ibfk_3` FOREIGN KEY (`pxt_txt_id`) REFERENCES `tramite_tipo` (`txt_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_pasos_ibfk_4` FOREIGN KEY (`pxt_car_id`) REFERENCES `cargos` (`car_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_pasos_ibfk_5` FOREIGN KEY (`pxt_uxt_id`) REFERENCES `unidad_tiempo` (`uxt_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_pasos_ibfk_6` FOREIGN KEY (`pxt_txp_id`) REFERENCES `tramite_prefijo` (`txp_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_tipo`
-- 
ALTER TABLE `tramite_tipo`
  ADD CONSTRAINT `tramite_tipo_ibfk_1` FOREIGN KEY (`txt_txf_id`) REFERENCES `tramite_frecuencia` (`txf_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `usuario`
-- 
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`usu_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`usu_per_id`) REFERENCES `perfil` (`per_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
