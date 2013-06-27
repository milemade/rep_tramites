-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 27-03-2013 a las 11:11:56
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `tramites`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `activo`
-- 

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
  `axm_ip` varchar(100) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`axm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=40 ;

-- 
-- Volcar la base de datos para la tabla `admin_menu`
-- 

INSERT INTO `admin_menu` VALUES (32, 'tramite_tipo_origen', 'Tipo Origen Tramite', 'Fuente u origen del tramite', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (31, 'tramite_frecuencia', 'Frecuencia Tramites', 'Periodo que se repite un tipo de tramite', '', '', 'txf_estado', 'txf_usu_id', 'txf_fechahora', 'txf_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (30, 'empresas_grupo', 'Clasificación Empresas', 'UNA CLASIFICACIÓN POR TAMAÑO DE LA EMPRESA CLIENTE', '', '', 'gru_estado', 'gru_usu_id', 'gru_fechahora', 'gru_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (28, 'tipo_documento', 'Tipo Documento', 'Tipo de Documentos que maneja  un trámite', '', '', 'txd_estado', 'txd_usu_id', 'txd_fechahora', 'txd_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (25, 'tramite_pasos', 'Etapas del tramite', 'Pasos o etapas de la ejecución del trámite', '', 'a.pxt_txt_id', 'pxt_estado', 'pxt_usu_id', 'pxt_fechahora', 'pxt_equipo', 1, 'pxt_ip');
INSERT INTO `admin_menu` VALUES (26, 'tramite_tipo_origen', 'Origen del Tipo Trámite', 'Origen del trámite (Interno, Externo)', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (27, 'tramite_estado', 'Estado del trámite', 'Son los diferentes estados de cada étapa del trámite.', '', '', 'ext_estado', 'ext_usu_id', 'ext_fechahora', 'ext_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (24, 'tramite_tipo', 'Tipo Tramite', 'Son las Clases de los trámites que maneja la empresa.', 'tramite_pasos', 'pxt_txt_id', 'txt_estado', 'txt_usu_id', 'txt_fechahora', 'txt_equipo', 0, 'txt_ip');
INSERT INTO `admin_menu` VALUES (22, 'empresa_cliente', 'Empresas Externas', 'Información de las Empresas que tienen tratos comerciales o de servicios con el Grupo Empresarial Alianza', '', 'exc_txe_id', 'exc_estado', 'exc_usu_id', 'exc_fechahora', 'exc_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (23, 'empresa_sedes', 'Sedes Grupo Empresarial', 'Sedes del Grupo Alianza', 'dep_empresa', 'dxe_sede_id', 'sede_estado', 'sede_usu_id', 'sede_fechahora', 'sede_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (19, 'departamento', 'Departamentos Colombia', 'Departamentos del país', 'ciudad', 'ciu_dep_id', 'dep_estado', 'dep_usu_id', 'dep_fechahora', 'dep_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (20, 'ciudad', 'Ciudades', 'Ciudades de los departamentos del país', '', 'a.ciu_dep_id', 'ciu_estado', 'ciu_usu_id', 'ciu_fechahora', 'ciu_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (21, 'tipo_empresacliente', 'Tipo de Empresa ', 'CLASIFICACIÓN EMPRESAS CLIENTE POR TAMAÑO O CANTIDAD DE EMPLEADOS', 'empresa_cliente', 'exc_txe_id', 'txe_estado', 'txe_usu_id', 'txe_fechahora', 'txe_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (18, 'cargos', 'Cargos', 'Son los cargos de los empleados del Grupo Empresarial Alianza', '', '', 'car_estado', 'car_usu_id', 'car_fechahora', 'car_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (17, 'dep_empresa', 'Departamentos Grupo', 'Departamentos de las sedes del Grupo Empresarial Alianza', 'cargos', 'car_dxe_id', 'dxe_estado', 'dxe_usu_id', 'dxe_fechahora', 'dxe_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (1, 'empresa', 'Grupo Alianza', 'Grupo Empresarial Alianza', 'empresa_sedes', 'sede_emp_id', 'emp_estado', 'emp_usu_id', 'emp_fechahora', 'emp_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (33, 'alianza_emp', 'Empresas Alianza', 'Son las Empresas que pertenecen al grupo Alianza.', 'alianza_sedes', 'axs_exa_id', 'exa_estado', 'exa_usu_id', 'exa_fechahora', 'exa_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (34, 'alianza_sedes', 'Sedes Empresas Propias', 'Sedes de las Empresas del Grupo Alianza para el manejo de tramites', 'alianza_dep', 'axe_axs_id', 'axs_estado', 'axs_usu_id', 'axs_fechahora', 'axs_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (35, 'depxdepal', 'Conf. Departamentos', 'RELACION DEPARTAMENTOS GRUPO EMPRESARIAL CON LOS DEPARTAMENTOS DE LAS EMPRESAS PROPIAS', '', '', 'dxd_estado', 'dxd_usu_id', 'dxd_fechahora', 'dxd_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (36, 'alianza_dep', 'Deptos Empresas Propias', 'Son los Departamentos de las Empresas de Alianza', '', '', 'axe_estado', 'axe_usu_id', 'axe_fechahora', 'axe_equipo', 1, '');
INSERT INTO `admin_menu` VALUES (38, 'empresascliente_grupo', 'Grupo Empresas Cliente', 'Es la forma como se agrupan varias empresas del mismo tipo que tienen un funcionamiento centralizado.', 'empresa_cliente', 'exc_exg_id', 'exg_estado', 'exg_usu_id', 'exg_fechahora', 'exg_equipo', 0, '');
INSERT INTO `admin_menu` VALUES (39, 'empresas_tipo', 'Clases de Empresas', 'DIFERENCIACIÓN CLIENTES DE OTROS TERCEROS', 'tipo_empresacliente', 'txe_ext_id', 'ext_estado', 'ext_usu_id', 'ext_fechahora', 'ext_equipo', 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_perfiles`
-- 

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

CREATE TABLE `admin_permisos` (
  `aper_id` int(11) NOT NULL auto_increment,
  `aper_axp_id` int(11) NOT NULL default '0',
  `aper_nombre_tabla` varchar(150) collate utf8_spanish_ci NOT NULL default '',
  `aper_txper_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`aper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=97 ;

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
INSERT INTO `admin_permisos` VALUES (88, 1, 'empresas_grupo', 1);
INSERT INTO `admin_permisos` VALUES (89, 1, 'alianza_emp', 6);
INSERT INTO `admin_permisos` VALUES (90, 1, 'tramite_frecuencia', 1);
INSERT INTO `admin_permisos` VALUES (91, 1, 'empresas_tipo', 1);
INSERT INTO `admin_permisos` VALUES (92, 1, 'empresas_tipo', 3);
INSERT INTO `admin_permisos` VALUES (93, 1, 'empresas_tipo', 6);
INSERT INTO `admin_permisos` VALUES (94, 1, 'empresas_grupo', 6);
INSERT INTO `admin_permisos` VALUES (95, 1, 'tramite_estado', 1);
INSERT INTO `admin_permisos` VALUES (96, 1, 'tramite_estado', 6);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_tablas`
-- 

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
  `axt_order` varchar(200) collate utf8_spanish_ci NOT NULL,
  PRIMARY KEY  (`axt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='empresas_tipo' AUTO_INCREMENT=221 ;

-- 
-- Volcar la base de datos para la tabla `admin_tablas`
-- 

INSERT INTO `admin_tablas` VALUES (219, 'empresa_cliente', 'exc_mail', 0, 'email', '', '', '', '', '', '', 'E.mail contacto', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (218, 'empresa_cliente', 'exc_contacto', 0, 'required', '', '', '', '', '', '', 'Nombre persona contacto', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (216, 'empresa_cliente', 'exc_fijo', 0, 'text', '', '', '', '', '', '', 'Teléfono fijo', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (217, 'empresa_cliente', 'exc_celular', 0, 'text', '', '', '', '', '', '', 'Teléfono celular', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (113, 'tipo_documento', 'txd_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txd_nombre ');
INSERT INTO `admin_tablas` VALUES (112, 'tramite_estado', 'ext_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Estado', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (108, 'tramite_tipo_origen ', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (111, 'tramite_estado', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'ext_nombre');
INSERT INTO `admin_tablas` VALUES (106, 'tramite_pasos', 'pxt_tmpolimite', 0, 'numeror', '', '', '', '', '', '', 'Plazo máximo (Dias)', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (105, 'tramite_pasos', 'pxt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Etapa Trámite', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (103, 'tramite_pasos', 'pxt_txp_id', 0, 'selectt', 'tramite_prefijo', 'txp_id', 'txp_nombre', '', 'txp_estado', '', 'Tiempo para realizar Trámite', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (102, 'tramite_pasos', 'pxt_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Etapa del Trámite', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (101, 'tramite_pasos', 'pxt_txt_id', 0, 'select', 'tramite_tipo', 'txt_id', 'txt_nombre', '', 'txt_estado', 'SI', 'Tipo de Trámite', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (97, 'empresa_sedes', 'sede_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Sede', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (96, 'empresa_sedes', 'sede_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (95, 'empresa_sedes', 'sede_emp_id', 0, 'select', 'empresa', 'emp_id', 'emp_nombre', '', 'emp_estado', 'SI', 'Nombre Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (94, 'empresa_sedes', 'sede_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresa.emp_nombre,empresa_sedes.sede_nombre');
INSERT INTO `admin_tablas` VALUES (214, 'empresa_cliente', 'exc_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (215, 'empresa_cliente', 'exc_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (89, 'tipo_empresacliente', 'txe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (86, 'ciudad', 'ciu_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Ciudad', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (85, 'ciudad', 'ciu_dep_id', 0, 'select', 'departamento', 'dep_id', 'dep_nombre', '', 'dep_estado', 'SI', 'Departamento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (84, 'ciudad', 'ciu_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'departamento.dep_nombre,ciudad.ciu_nombre');
INSERT INTO `admin_tablas` VALUES (83, 'departamento', 'dep_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (81, 'cargos', 'car_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Cargo', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (82, 'departamento', 'dep_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'departamento.dep_nombre');
INSERT INTO `admin_tablas` VALUES (213, 'empresa_cliente', 'exc_exg_id', 0, 'selectt', 'empresascliente_grupo', 'exg_id', 'exg_nombre', '', 'exg_estado', '', 'Grupo Empresas', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (80, 'cargos', 'car_dxe_id', 0, 'depto', '', '', '', '', '', '', 'Departamento Grupo Alianza', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (79, 'cargos', 'car_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'car_dxe_id,car_id,car_nombre');
INSERT INTO `admin_tablas` VALUES (78, 'dep_empresa', 'dxe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Departamento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (76, 'dep_empresa', 'dxe_sede_id', 0, 'select', 'v_empsede', 'sede_id', 'sede_nombre', '', 'sede_estado', 'SI', 'Empresa - Sede', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (74, 'empresa', 'emp_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (75, 'dep_empresa', 'dxe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'v_empsede.sede_nombre,dep_empresa.dxe_nombre');
INSERT INTO `admin_tablas` VALUES (115, 'tipo_documento', 'txd_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Tipo Documento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (114, 'tipo_documento', 'txd_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Documento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (100, 'tramite_pasos', 'pxt_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'pxt_txp_id,pxt_nombre');
INSERT INTO `admin_tablas` VALUES (88, 'tipo_empresacliente', 'txe_ext_id', 0, 'select', 'empresas_tipo', 'ext_id', 'ext_nombre', '', 'ext_estado', 'SI', 'Clasificación Tipo', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (87, 'tipo_empresacliente', 'txe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresas_tipo.ext_nombre,tipo_empresacliente.txe_nombre');
INSERT INTO `admin_tablas` VALUES (77, 'dep_empresa', 'dxe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (1, 'empresa', 'emp_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'emp_nombre');
INSERT INTO `admin_tablas` VALUES (2, 'empresa', 'emp_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Grupo', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (212, 'empresa_cliente', 'exc_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa ', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (125, 'cargos', 'car_revisa_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Lider', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (126, 'cargos', 'car_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones del Cargo', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (128, 'empresas_grupo', 'gru_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresas_grupo.gru_id');
INSERT INTO `admin_tablas` VALUES (129, 'empresas_grupo', 'gru_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Clasificación', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (130, 'empresas_grupo', 'gru_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Clasificación', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (131, 'tramite_frecuencia', 'txf_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txf_dias');
INSERT INTO `admin_tablas` VALUES (132, 'tramite_frecuencia', 'txf_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre frecuencia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (133, 'tramite_frecuencia', 'txf_dias', 0, 'numeror', '', '', '', '', '', '', 'Tiempo en Dias', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (135, 'empresa', 'emp_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (136, 'empresa', 'emp_telefono', 0, 'text', '', '', '', '', '', '', 'Telefono Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (140, 'empresa', 'emp_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (142, 'ciudad', 'ciu_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Ciudad', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (143, 'departamento', 'dep_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Departamento', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (144, 'tramite_tipo_origen', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txo_nombre');
INSERT INTO `admin_tablas` VALUES (145, 'tramite_tipo_origen', 'txo_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Origen', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (146, 'tramite_tipo_origen', 'txo_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Tipo Origen', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (147, 'alianza_emp', 'exa_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_emp.exa_nombre');
INSERT INTO `admin_tablas` VALUES (148, 'alianza_emp', 'exa_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (149, 'alianza_emp', 'exa_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (150, 'alianza_emp', 'exa_direccion', 0, 'text', '', '', '', '', '', '', 'Direccion Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (151, 'alianza_emp', 'exa_telefono', 0, 'text', '', '', '', '', '', '', 'Telefono Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (152, 'alianza_emp', 'exa_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (153, 'alianza_sedes', 'axs_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_emp.exa_nombre, alianza_sedes.axs_nombre');
INSERT INTO `admin_tablas` VALUES (154, 'alianza_sedes', 'axs_exa_id', 0, 'select', 'alianza_emp', 'exa_id', 'exa_nombre', '', 'exa_estado', 'SI', 'Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (155, 'alianza_sedes', 'axs_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (156, 'alianza_sedes', 'axs_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Sede Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (157, 'depxdepal', 'dxd_id', 1, '', '', '', '', '', '', '', '', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (158, 'depxdepal', 'dxd_dxe_id', 0, 'depto', '', '', '', '', '', 'SI', 'Departamento Grupo ', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (159, 'depxdepal', 'dxd_axe_id', 0, 'alianza', '', '', '', '', '', '', 'Departamento Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (160, 'alianza_dep', 'axe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_sedes.axs_nombre,alianza_dep.axe_nombre');
INSERT INTO `admin_tablas` VALUES (161, 'alianza_dep', 'axe_axs_id', 0, 'select', 'alianza_sedes', 'axs_id', 'axs_nombre', '', 'axs_estado', 'SI', 'Sede Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (162, 'alianza_dep', 'axe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Dpto Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (163, 'alianza_dep', 'axe_siglas', 0, 'required', '', '', '', '', '', '', 'Siglas Dep Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (164, 'alianza_dep', 'axe_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Depto Empresa Propia', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (168, 'empresascliente_grupo', 'exg_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Grupo Empresas Cliente', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (167, 'empresascliente_grupo', 'exg_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'exg_nombre');
INSERT INTO `admin_tablas` VALUES (211, 'empresa_cliente', 'exc_txe_id', 0, 'select', 'tipo_empresacliente', 'txe_id', 'txe_nombre', '', 'txe_estado', 'SI', 'Tipo de Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (209, 'empresa_cliente', 'exc_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'tipo_empresacliente.txe_nombre,empresa_cliente.exc_nombre asc');
INSERT INTO `admin_tablas` VALUES (210, 'empresa_cliente', 'exc_ext_id', 0, 'seltipo', 'empresas_tipo', 'ext_id', 'ext_nombre', '', 'ext_estado', '', 'Clase de Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (183, 'empresas_tipo', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'ext_nombre');
INSERT INTO `admin_tablas` VALUES (184, 'empresas_tipo', 'ext_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Clase de Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (185, 'empresas_tipo', 'ext_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Clase de Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (186, 'tipo_empresacliente', 'txe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Tipo Empresa', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (198, 'tramite_tipo', 'txt_nombre', 0, 'quin', '', '', '', '', '', 'SI', 'Nombre Tipo Trámite', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (197, 'tramite_tipo', 'txt_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txt_nombre');
INSERT INTO `admin_tablas` VALUES (196, 'tramite_estado', 'ext_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Estado', 1, 0, '');
INSERT INTO `admin_tablas` VALUES (220, 'empresa_cliente', 'exc_res_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Responsable Alianza', 1, 0, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `admin_tipo_archivo`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos Alinza para los Tramites' AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `alianza_dep`
-- 

INSERT INTO `alianza_dep` VALUES (1, 1, 'Depto sede1', 'DSU', 'hhhuuhuhu', 1, '2012-07-27 08:08:03', 1, '');
INSERT INTO `alianza_dep` VALUES (2, 1, 'DEPTO GIR 2', 'DG2', 'HGGGYGY', 1, '2012-08-23 22:46:27', 1, '127.0.0.1');
INSERT INTO `alianza_dep` VALUES (3, 7, 'COMERCIAL', 'CIAL', 'ES EL DEPARTAMENTO COMERCIAL ENCARGADO DE LA GESTION COMERCIAL', 1, '2012-09-27 21:32:16', 1, '192.168.10.43');
INSERT INTO `alianza_dep` VALUES (4, 8, 'INVESTIGACIÃ“N Y DESARROLLO', 'IDC', '', 1, '2012-12-10 15:22:05', 1, '127.0.0.1');
INSERT INTO `alianza_dep` VALUES (5, 8, 'AUDITORIA', 'ADC', '', 1, '2012-12-10 15:22:40', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alianza_emp`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Alianza' AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `alianza_emp`
-- 

INSERT INTO `alianza_emp` VALUES (1, 1, 'CONSTRUCTORA ALIANZA', '989898', '', '', '', 0, '2012-08-03 22:16:44', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (2, 1, 'COOPETARIVA ALIANZA ', '909090', 'direccion', '898989', 'ninguna', 0, '2012-08-03 22:17:21', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (3, 1, 'COOPETARIVA ALIANZA VIVIR', '909090', 'direccion', '898989', 'ninguna', 0, '2012-08-03 22:15:45', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (4, 1, 'TEMPORALES', '998877', 'Calle 116 47 68', '6789432', 'Es una empresa de Textifilh', 0, '2012-08-03 22:16:25', 1, 'MILE-PC');
INSERT INTO `alianza_emp` VALUES (5, 0, 'COOPERATIVADE TRABAJO ASOCIADO GESTION ALIANZA', '900.069.893-2', 'CR 15 BIS  # 39 A -27', '6250247', '', 1, '2012-08-27 15:13:32', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (6, 0, 'CONSTRUCTORA ALIANZA C.T.A. ', '830.507.699-6', 'CR 15 BIS  # 39 A -27', '6057272 EXT 115', '', 1, '2012-08-27 16:21:02', 1, '190.85.79.201');
INSERT INTO `alianza_emp` VALUES (7, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA VIVIR CTA', '900.116.755-6', 'CR 15 BIS  # 39 A -27', '6057272', '', 1, '2012-08-27 15:17:12', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (8, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA SOCIAL  CTA', '900.047.273-1', 'CLL 3 SUR # 8-68', '4094841', '', 1, '2012-08-27 15:18:30', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (9, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA ASOCIATIVA', '830.099.308-1', 'CR 15 BIS  # 39 A -27', '6057272', '', 1, '2012-08-27 15:19:43', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (10, 0, 'ALIANZA ENLACE TEMPORAL S.A.S', '900.445.296-8', 'CLL 93 BIS # 19-29 OF 202', '', '', 1, '2012-08-27 15:21:16', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (11, 0, 'ALIANZA TEMPORAL RECURSO HUMANO S.A.S', '900.513.360-3', 'CR 16 # 96-14', '', '', 1, '2012-08-27 15:22:25', 1, '192.168.10.55');
INSERT INTO `alianza_emp` VALUES (12, 0, 'FONDO DE EMPLEADOS GRUPO ALIANZA FONALIANZAS', '900.549.513-5', 'CLL 39 A # 14-94 IN 2 ', '6057272', '', 1, '2012-08-30 08:28:29', 1, '192.168.10.55');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alianza_sedes`
-- 

CREATE TABLE `alianza_sedes` (
  `axs_id` int(11) NOT NULL auto_increment,
  `axs_exa_id` int(11) NOT NULL,
  `axs_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `axs_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `axs_estado` int(1) NOT NULL default '1',
  `axs_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `axs_usu_id` bigint(20) NOT NULL,
  `axs_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`axs_id`,`axs_exa_id`),
  KEY `axs_exa_id` (`axs_exa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Alianza' AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `alianza_sedes`
-- 

INSERT INTO `alianza_sedes` VALUES (1, 1, 'Sede Girardot', 'que es??', 1, '2012-07-26 21:06:57', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (2, 1, 'sede galerias', '', 1, '2012-07-27 15:11:10', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (3, 2, 'uno', '', 1, '2012-07-27 15:12:04', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (4, 1, 'Sede norte', '', 1, '2012-07-27 15:17:59', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (5, 1, 'Sede nororiente', '', 1, '2012-07-27 15:19:57', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (6, 2, 'DOS', 'CARTA', 1, '2012-07-27 15:20:26', 1, 'MILE-PC');
INSERT INTO `alianza_sedes` VALUES (7, 6, 'BOGOTA - TEUSAQUILLO', '', 1, '2012-09-24 05:44:02', 1, '190.85.79.201');
INSERT INTO `alianza_sedes` VALUES (8, 10, 'CENTRAL', '', 1, '2012-12-10 15:21:23', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cargos`
-- 

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
  KEY `fk_depempresa` (`car_dxe_id`),
  KEY `car_revisa_id` (`car_revisa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Cargos en el departamento de la empresa' AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `cargos`
-- 

INSERT INTO `cargos` VALUES (1, '', 1, 1, 'GERENTE GENERAL', 0, 'SIN LIDER', 1, '2012-09-01 18:29:04', 1);
INSERT INTO `cargos` VALUES (2, 'mile-PC', 1, 1, 'GERENTE ADMINISTRATIVA', 0, '', 1, '2012-08-15 17:38:34', 1);
INSERT INTO `cargos` VALUES (3, 'mile-PC', 1, 1, 'COORDINADOR ADMINISTRATIVO', 1, '', 1, '2012-08-15 17:56:05', 1);
INSERT INTO `cargos` VALUES (4, 'mile-PC', 1, 1, 'COORDNADOR COMERCIAL', 0, 'N/A', 1, '2012-08-15 18:38:10', 1);
INSERT INTO `cargos` VALUES (5, 'mile-PC', 2, 1, 'JEFE CONTABILIDAD', 0, '', 1, '2012-08-15 18:39:09', 1);
INSERT INTO `cargos` VALUES (6, 'mile-PC', 2, 5, 'ANALISTA CONTABLE', 0, '', 1, '2012-08-15 18:39:56', 1);
INSERT INTO `cargos` VALUES (7, '190.85.79.201', 3, 4, 'GESTOR DE RECURSO HUMANO', 0, '', 1, '2012-08-24 09:38:03', 1);
INSERT INTO `cargos` VALUES (8, '127.0.0.1', 2, 5, 'CONTADOR', 5, 'KOK', 1, '2013-03-10 22:00:43', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ciudad`
-- 

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

INSERT INTO `ciudad` VALUES (1, 1, 'Amazonas', '', 1, '2012-07-03 01:09:47', 1, 'MILE-PC');
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
INSERT INTO `ciudad` VALUES (31, 2, 'BRICEÃ‘O', '', 1, '2012-08-23 21:21:50', 1, '');
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
INSERT INTO `ciudad` VALUES (517, 15, 'Sahagun ', '', 1, '2012-07-10 19:35:51', 1, '');
INSERT INTO `ciudad` VALUES (518, 15, 'San andres sotavento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (519, 15, 'San antero ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (520, 15, 'San bernardo del viento ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (521, 15, 'San carlos ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (522, 15, 'San pelayo ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (523, 15, 'Tierralta ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (524, 15, 'Valencia ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` VALUES (525, 16, 'Agua de Dioss', '', 1, '2012-07-10 19:22:27', 1, '');
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
INSERT INTO `ciudad` VALUES (565, 16, 'Guasca ', '', 1, '2012-05-20 00:21:04', 1, '');
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
INSERT INTO `ciudad` VALUES (582, 16, 'Medinaa', '', 1, '2012-07-10 19:22:43', 1, '');
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
INSERT INTO `ciudad` VALUES (623, 16, 'Tocaima ima', '', 1, '2012-07-10 18:59:42', 1, '');
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
INSERT INTO `ciudad` VALUES (1110, 32, 'Caruru ', '', 1, '2012-07-10 19:24:19', 1, '');
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

INSERT INTO `departamento` VALUES (1, '127.0.0.1', 'Amazonas', 'El Amazonas es la regION selvAtica tropical mAs grande del planeta, con una extensiOn aproximada de 6.000.000 km2 repartidos en ocho paises de SuramErica: Brasil, Peru (estos dos paises los que mayor extension selvativa poseen), Colombia, Bolivia, Venezuela, Ecuador, Guyana y Guayana Francesa.', 1, '2012-08-23 20:48:21', 1);
INSERT INTO `departamento` VALUES (2, '127.0.0.1', 'Antioquia', 'estÃ¡ localizada en la zona noroccidental del paÃ­s y es la segunda divisiÃ³n polÃ­tico-administrativa en aglomeraciÃ³n de personas de la naciÃ³n. Su capital MedellÃ­n es a la vez la segunda ciudad en poblaciÃ³n y economÃ­a', 1, '2012-08-23 21:06:41', 1);
INSERT INTO `departamento` VALUES (3, '', 'Arauca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (4, '', 'Archipielago de San Andres, Providencia', '', 1, '0000-00-00 00:00:00', 1);
INSERT INTO `departamento` VALUES (5, '', 'Atlantico', 'jiji', 1, '2012-05-03 21:19:38', 1);
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
INSERT INTO `departamento` VALUES (16, 'MILE-PC', 'Cundinamarca', 'vivi cundi', 1, '2012-07-10 19:25:17', 1);
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
INSERT INTO `departamento` VALUES (30, 'MILE-PC', 'Tolimaa', '', 1, '2012-07-10 19:23:14', 1);
INSERT INTO `departamento` VALUES (31, '', 'Valle del Cauca', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (32, '', 'Vaupes', '', 1, '0000-00-00 00:00:00', 0);
INSERT INTO `departamento` VALUES (33, '', 'Vichada', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `depxdepal`
-- 

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

INSERT INTO `depxdepal` VALUES (1, 3, 4, 1, '2012-12-10 15:23:50', 1, '127.0.0.1');
INSERT INTO `depxdepal` VALUES (2, 2, 3, 1, '2013-01-06 18:58:44', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `dep_empresa`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos de la Empresa' AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `dep_empresa`
-- 

INSERT INTO `dep_empresa` VALUES (1, 1, 'DIRECTIVOS', '', 1, '2012-08-15 17:27:38', 1, 'mile-PC');
INSERT INTO `dep_empresa` VALUES (2, 1, 'CONTABILIDAD', '', 1, '2012-08-15 17:27:54', 1, 'mile-PC');
INSERT INTO `dep_empresa` VALUES (3, 1, 'GESTION DE RECURSO HUMANO', 'SCD', 1, '2012-08-24 09:35:47', 1, '190.85.79.201');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `documento`
-- 

CREATE TABLE `documento` (
  `doc_id` int(11) NOT NULL auto_increment,
  `doc_usu_id` bigint(20) NOT NULL,
  `doc_tra_id` int(11) NOT NULL,
  `doc_ciu_id` int(11) unsigned NOT NULL,
  `doc_txd_id` int(11) NOT NULL,
  `doc_txe_id` int(11) NOT NULL COMMENT 'Tipo Empresa Cliente',
  `doc_exc_id` int(11) NOT NULL COMMENT 'Empresa Cliente',
  `doc_axe_id` int(11) NOT NULL COMMENT 'Departamento Empresas Propias',
  `doc_usudestinoid` int(11) NOT NULL,
  `doc_usudestino` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `doc_fecrecibo` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `doc_fecdoc` date NOT NULL,
  `doc_asunto` text collate utf8_spanish2_ci NOT NULL,
  `doc_entremitente` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `doc_remitente` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `doc_obsdocmento` text collate utf8_spanish2_ci NOT NULL,
  `doc_estado` int(1) NOT NULL default '1',
  `doc_anexos` text collate utf8_spanish2_ci NOT NULL,
  `doc_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`doc_id`),
  KEY `doc_tra_id` (`doc_tra_id`),
  KEY `doc_txd_id` (`doc_txd_id`),
  KEY `doc_ciu_id` (`doc_ciu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos del tramite' AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `documento`
-- 

INSERT INTO `documento` VALUES (1, 0, 1, 145, 1, 1, 2, 3, 10, '', '2013-03-09 18:23:17', '2013-03-05', 'HHH', '', '', 'HHHHHHHHHHHH para ti', 1, 'CORRER', '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa`
-- 

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

INSERT INTO `empresa` VALUES (1, 'Grupo Alianza', '88995511', 'cra 15 39 39bis', '7878787', '', 1, '2012-08-08 22:15:48', 1, 'MILE-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresascliente_grupo`
-- 

CREATE TABLE `empresascliente_grupo` (
  `exg_id` int(11) NOT NULL auto_increment,
  `exg_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `exg_estado` int(1) NOT NULL default '1',
  `exg_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `exg_usu_id` int(11) NOT NULL,
  `exg_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`exg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `empresascliente_grupo`
-- 

INSERT INTO `empresascliente_grupo` VALUES (1, 'no agrupada (individual)', 1, '2012-08-27 15:02:45', 1, '190.85.79.201');
INSERT INTO `empresascliente_grupo` VALUES (2, 'GRUPO INNOVA ', 1, '2012-08-27 15:07:35', 1, '190.85.79.201');
INSERT INTO `empresascliente_grupo` VALUES (3, 'GRUPO GUERFOR ok', 1, '2012-09-24 05:35:59', 1, '190.85.79.201');
INSERT INTO `empresascliente_grupo` VALUES (4, 'MEJORANDOLA', 1, '2013-01-03 20:00:47', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresas_grupo`
-- 

CREATE TABLE `empresas_grupo` (
  `gru_id` int(11) NOT NULL auto_increment,
  `gru_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `gru_obs` text collate utf8_spanish2_ci NOT NULL,
  `gru_estado` int(1) NOT NULL default '1',
  `gru_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `gru_usu_id` bigint(20) NOT NULL,
  `gru_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`gru_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tamaño empresas' AUTO_INCREMENT=8 ;

-- 
-- Volcar la base de datos para la tabla `empresas_grupo`
-- 

INSERT INTO `empresas_grupo` VALUES (1, 'V.I.P.', 'VIP son siglas que en inglés significan Very Important Person (Persona Muy Importante)', 0, '2012-07-11 17:23:05', 1, 'MILE-PC');
INSERT INTO `empresas_grupo` VALUES (2, 'de 51 a 100 trabajadores', '', 0, '2012-09-24 05:21:06', 1, '190.85.79.201');
INSERT INTO `empresas_grupo` VALUES (3, 'DE 201 a 300 TRABAJADORES', '', 0, '2012-09-24 05:23:39', 1, '190.85.79.201');
INSERT INTO `empresas_grupo` VALUES (4, 'menos de 20 TRABAJADORES', '', 0, '2012-09-24 05:22:10', 1, '190.85.79.201');
INSERT INTO `empresas_grupo` VALUES (5, 'DE 21 A 50 TRABAJADORES', '', 0, '2012-09-24 05:20:20', 1, '190.85.79.201');
INSERT INTO `empresas_grupo` VALUES (6, 'DE 101 A 200 TRABAJADORES', '', 0, '2012-09-24 05:22:53', 1, '190.85.79.201');
INSERT INTO `empresas_grupo` VALUES (7, 'centro de atencion teusaquillo', '', 1, '2012-09-24 05:38:10', 1, '190.85.79.201');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresas_tipo`
-- 

CREATE TABLE `empresas_tipo` (
  `ext_id` int(11) NOT NULL auto_increment,
  `ext_nombre` varchar(70) collate utf8_spanish2_ci NOT NULL,
  `ext_obs` text collate utf8_spanish2_ci NOT NULL,
  `ext_usu_id` int(11) NOT NULL,
  `ext_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ext_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `ext_ip` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `ext_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tipo Tipo Empresas' AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `empresas_tipo`
-- 

INSERT INTO `empresas_tipo` VALUES (1, 'Contratistas', 'Un contratista es la persona o empresa que es contratada por otra ORGANIZACIÃƒÂ“N particular para la CONSTRICCIÃƒÂ“N un edificio, carretera, INSTALACIÃƒÂ“N ALGÃƒÂšN trabajo especial, como REFINERÃƒÂA o plataformas petroleras.', 1, '2013-01-03 21:13:47', '127.0.0.1', '', 1);
INSERT INTO `empresas_tipo` VALUES (2, 'Proveedores ', 'Se aplica a la persona natural o empresa que se dedica a proveer o abastecer de productos o servicios necesarios a una persona o empresa', 1, '2012-09-24 05:28:12', '190.85.79.201', '', 1);
INSERT INTO `empresas_tipo` VALUES (3, 'Entidades Estatales', 'Son todas aquellas entidades que son propiedad del Estado, sea éste nacional, municipal o de cualquier otro estrato administrativo, ya sea de un modo total o parcial', 0, '2012-08-15 09:34:27', '', '', 1);
INSERT INTO `empresas_tipo` VALUES (4, 'CLIENTES', 'CLIENTE ES QUIEN ACCEDE A UN PRODUCTO O SERVICIO QUE OFRECE EL GRUPO ALIANZA POR MEDIO DE UNA TRANSACCIÃƒÂ“N FINANCIERA (DINERO) U OTRO MEDIO DE PAGO.', 1, '2013-01-04 15:00:42', '127.0.0.1', '', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa_cliente`
-- 

CREATE TABLE `empresa_cliente` (
  `exc_id` int(11) NOT NULL auto_increment,
  `exc_exg_id` int(11) NOT NULL,
  `exc_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `exc_usu_id` bigint(20) NOT NULL,
  `exc_ext_id` int(11) NOT NULL COMMENT 'empresa tipo',
  `exc_txe_id` int(11) NOT NULL COMMENT 'Tipo Empresa Cliente',
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
  KEY `fk_tipoempresacliente` (`exc_txe_id`),
  KEY `exc_exg_id` (`exc_exg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Cliente' AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `empresa_cliente`
-- 

INSERT INTO `empresa_cliente` VALUES (2, 4, '2013-01-03 21:04:58', 1, 4, 1, 'COLORTEX S.A.', '77778888', 'CALLE 146 56 78', 6789543, 2147483647, '', 'JUAN CARLOS CAMPOS', 'JCAMPOS@MAIL.COM', 1, 1, '127.0.0.1');
INSERT INTO `empresa_cliente` VALUES (3, 4, '2013-01-03 21:18:45', 1, 1, 5, 'JEANTECH S.A.', '5555544444', 'CALLE 52 18 67', 2567843, 315678321, '', 'MARIA DEL SOCORRO MONTALVO', 'MARIAMONTALVO@MAIL.COM', 2, 1, '127.0.0.1');
INSERT INTO `empresa_cliente` VALUES (4, 4, '2013-01-03 21:49:47', 1, 4, 2, 'EMPRESA3170 NUVO', '22222333333', 'DIR AZUL', 2722790, 2147483647, '', 'GUSTAVO BUSTOS', 'GRANOS@GMAIL.COM', 2, 1, '127.0.0.1');
INSERT INTO `empresa_cliente` VALUES (5, 4, '2013-01-03 21:53:46', 1, 4, 2, 'GAMACOLOR LTDA', '777744444', 'CRA 11 14 14', 567456, 300678432, '', 'JORGE BUCAY', 'BUCAY@MAIL.COM', 7, 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa_sedes`
-- 

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Base' AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `empresa_sedes`
-- 

INSERT INTO `empresa_sedes` VALUES (1, 1, 'SEDE TEUSAQUILLO', 'bARRIO TEUSAQUILLO', 1, '2012-08-15 17:26:32', 1, 'mile-PC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `modulo`
-- 

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

CREATE TABLE `textos` (
  `txt_id` int(20) NOT NULL auto_increment,
  `txt_pagina` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txt_texto` text collate utf8_spanish2_ci NOT NULL,
  `txt_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=42 ;

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
INSERT INTO `textos` VALUES (25, 'apelreg', 'El o los apellidos tal como aparecen en el Documento de Identificación.', 1);
INSERT INTO `textos` VALUES (16, 'consecutivo', 'Este Consecutivo lo designa el sistema después de almacenar o guardar esta información.', 1);
INSERT INTO `textos` VALUES (17, 'empresalianza', 'Seleccione para cual de las Empresas Propias está dirigido el trámite.', 1);
INSERT INTO `textos` VALUES (18, 'sedealianza', 'Para seleccionar Sede de la Empresa Propia, primero debe seleccionar una Empresa .', 1);
INSERT INTO `textos` VALUES (19, 'deptoalianza', 'Para seleccionar un Departamento debe seleccionar una Sede de la Empresa Propia.', 1);
INSERT INTO `textos` VALUES (20, 'categoria', 'Permite clasificar el documento como documentos que requieren una respuesta o solo cumplen una función informativa', 1);
INSERT INTO `textos` VALUES (21, 'origen', 'Se refiere al origen del trámite, si es interno o propio de la empresa o si corresponde a una entidad externa.', 1);
INSERT INTO `textos` VALUES (22, 'prioridad', 'Prioridad o Urgencia del Trámite', 1);
INSERT INTO `textos` VALUES (23, 'nombrecorto', 'Es el nombre que va a mostrar el sistema en la parte superior Ej. Pedro Tobo', 1);
INSERT INTO `textos` VALUES (24, 'nombrereg', 'El nombre propio o nombre de pila tal como aparece en el Documento de identificación', 1);
INSERT INTO `textos` VALUES (26, 'docid', 'El número del Documento de Identificación.', 1);
INSERT INTO `textos` VALUES (27, 'registrese', 'Por favor diligencie los campos correctamente y recibirá un e.mail a la dirección \r\nregistrada con su password para ingresar a la aplicación.<BR><BR> \r\n                                      <b>IMPORTANTE: Solo ingresar números en los campos de número de teléfonos</b><br><br>Muchas Gracias!', 1);
INSERT INTO `textos` VALUES (28, 'tipoempresa', 'Seleccione el Tipo de Empresa que maneja el sistema', 1);
INSERT INTO `textos` VALUES (29, 'empresa', 'Para seleccionar una opción debió haber seleccionado alguna opción de Tipo Empresa', 1);
INSERT INTO `textos` VALUES (30, 'direccion', 'Indica el lugar físico donde trabaja o reside.', 1);
INSERT INTO `textos` VALUES (31, 'destinatarioid', 'Selección del "<b>Cargo - Usuario</b>" del departamento del Grupo Alianza que corresponde al Departamento de la Empresa Propia seleccionada.', 1);
INSERT INTO `textos` VALUES (32, 'destinatario', 'Se ingresa el nombre impreso en el documento si es para un destinatario no existente en la selección.', 1);
INSERT INTO `textos` VALUES (33, 'remitente', 'Es la persona quien firma o envía eldocumento', 1);
INSERT INTO `textos` VALUES (34, 'fechadoc', 'Es la fecha que tiene el documento. El formato para la fecha debe ser: AAAA-MM-DD Ejemplo: 2003-08-13. Puede situarse en la caja de texto aparecerá una ventana con un calendario del mes actual para que seleccione la fecha deseada.', 1);
INSERT INTO `textos` VALUES (35, 'asunto', ' Referencia o tema del documento.', 1);
INSERT INTO `textos` VALUES (36, 'anexos', 'Si es necesario hacer alguna observación y hacer referencia a los anexos del documento.', 1);
INSERT INTO `textos` VALUES (37, 'observacion', 'Si es necesario hacer alguna observación para hacer referencia al documento.', 1);
INSERT INTO `textos` VALUES (38, 'tipodoc', 'Permite seleccionar el tipo de los diferentes documentos que se reciben o envian.', 1);
INSERT INTO `textos` VALUES (39, 'entremitente', 'Si el nombre de la Empresa o Entidad  Remitente no se encuentra en el listado, debe ingresarse manualmente.', 1);
INSERT INTO `textos` VALUES (40, 'claseempresa', 'Diferenciacion clientes de otros terceros', 1);
INSERT INTO `textos` VALUES (41, 'tipoempresadoc', 'Clasificación por  numero de trabajadores', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_documento`
-- 

CREATE TABLE `tipo_documento` (
  `txd_id` int(11) NOT NULL auto_increment,
  `txd_nombre` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `txd_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txd_estado` int(1) NOT NULL default '1',
  `txd_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txd_usu_id` int(11) NOT NULL,
  `txd_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `tipo_documento`
-- 

INSERT INTO `tipo_documento` VALUES (1, 'CARTA INFORMATIVA', '', 1, '2012-08-27 15:23:54', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (2, 'CARTA COBRANZA', '', 1, '2012-08-27 15:24:16', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (3, 'NOTIFICACION entidad gubernamental', '', 1, '2012-08-27 15:28:46', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (4, 'RESOLUCION entidad gubernamental', '', 1, '2012-08-27 15:28:04', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (5, 'CARTA COMERCIAL', '', 1, '2012-08-27 15:26:31', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (6, 'NOTIFICACION PROCESO JURIDICO', '', 1, '2012-08-27 15:29:25', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (7, 'PROCESO JURIDICO', '', 1, '2012-08-27 15:29:51', 1, '190.85.79.201');
INSERT INTO `tipo_documento` VALUES (8, 'NFORMR', '', 0, '2013-01-03 11:10:24', 1, '127.0.0.1');
INSERT INTO `tipo_documento` VALUES (9, 'INFORME IMPLEMENTACION', '', 1, '2013-03-01 07:57:28', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_empresacliente`
-- 

CREATE TABLE `tipo_empresacliente` (
  `txe_id` int(11) NOT NULL auto_increment,
  `txe_ext_id` int(11) NOT NULL COMMENT 'empresa_tipo id',
  `txe_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txe_descricion` text collate utf8_spanish2_ci NOT NULL,
  `txe_estado` int(1) NOT NULL default '1',
  `txe_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txe_usu_id` int(11) NOT NULL,
  `txe_equipo` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txe_id`),
  KEY `txe_ext_id` (`txe_ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tipo Empresas Cliente' AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `tipo_empresacliente`
-- 

INSERT INTO `tipo_empresacliente` VALUES (1, 4, 'DE 005 A 030 TRABAJADORES ok', 'son las empresas que su recurso humano es de MÃƒÂNIMO 5 personas y MÃƒÂXIMO de 30 personas\r\n\r\n', 1, '2013-01-03 20:52:28', 1, '');
INSERT INTO `tipo_empresacliente` VALUES (2, 4, 'DE 031 A 070 TRABAJADORES', 'FELIPE CANCIÃƒÂ³N', 1, '2013-01-03 21:51:36', 1, '127.0.0.1');
INSERT INTO `tipo_empresacliente` VALUES (3, 4, 'DE 071 A 120 TRABAJADORES', '', 1, '2012-08-27 16:25:59', 1, '190.85.79.201');
INSERT INTO `tipo_empresacliente` VALUES (4, 1, '121 A 200 TRABAJADORES', '', 1, '2012-08-27 16:23:28', 1, '190.85.79.201');
INSERT INTO `tipo_empresacliente` VALUES (5, 1, '120 A 200 TRABAJADORES', 'contratistas 120 ARTÃƒÂCULOS ', 1, '2013-01-03 21:15:21', 1, '');
INSERT INTO `tipo_empresacliente` VALUES (6, 4, 'DE 121 A 200 TRABAJADORES', '', 1, '2012-08-27 16:24:45', 1, '190.85.79.201');
INSERT INTO `tipo_empresacliente` VALUES (7, 4, 'MAS DE 200 TRABAJADORES', '', 1, '2012-08-27 16:24:22', 1, '190.85.79.201');
INSERT INTO `tipo_empresacliente` VALUES (8, 2, 'COMPRAS Y SERVICIOS OFICINA ok', '', 1, '2012-09-24 05:33:41', 1, '');
INSERT INTO `tipo_empresacliente` VALUES (9, 2, 'laboratorios medicos', '', 1, '2012-09-24 05:27:27', 1, '');
INSERT INTO `tipo_empresacliente` VALUES (10, 2, 'SERVICIOS OBRAS CIVILES', '', 1, '2012-08-27 16:29:17', 1, '190.85.79.201');
INSERT INTO `tipo_empresacliente` VALUES (11, 1, 'de 400 a 800 trabajadores', '', 1, '2013-01-03 20:27:23', 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite`
-- 

CREATE TABLE `tramite` (
  `tra_id` int(11) NOT NULL auto_increment,
  `tra_usu_id` int(11) NOT NULL COMMENT 'Usuario que ingresa el tramite',
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
  UNIQUE KEY `tra_consecutivo` (`tra_consecutivo`),
  KEY `tra_txt_id` (`tra_txt_id`),
  KEY `tra_ext_id` (`tra_ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla base de los tramites' AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tramite`
-- 

INSERT INTO `tramite` VALUES (1, 1, 2, 1, 1, 2, 145, 3, 0, '2013-03-05 21:46:00', 'ACTA MILENA', 2, 'CIAL201324000', 'INCORRECTO', 1, '127.0.0.1');
INSERT INTO `tramite` VALUES (2, 1, 1, 1, 1, 1, 411, 3, 0, '2013-03-10 14:35:23', 'CERRADO', 2, 'CIAL201324001', 'LAURITA', 1, '127.0.0.1');
INSERT INTO `tramite` VALUES (3, 1, 3, 1, 1, 2, 147, 3, 0, '2013-03-10 16:50:42', 'HUNI', 1, 'CIAL201324002', 'KOKO', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_adicionales`
-- 

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

INSERT INTO `tramite_categoria` VALUES (1, 'Requiere Respuesta', 'Indica que el trámite requiere después de su dilingeciamiento una respuesta directa al remitente.', 1, '2012-05-19 21:04:20', 1);
INSERT INTO `tramite_categoria` VALUES (2, 'Solo Informativo', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_documentos`
-- 

CREATE TABLE `tramite_documentos` (
  `dxt_id` int(11) NOT NULL auto_increment,
  `dxt_tra_id` int(11) NOT NULL,
  `dxt_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `dxt_file` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `dxt_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `dxt_estado` int(1) NOT NULL default '1',
  `dxt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `dxt_usu_id` int(11) NOT NULL,
  `dxt_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`dxt_id`),
  KEY `fk_tramite` (`dxt_tra_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos relacionados con el tramite' AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `tramite_documentos`
-- 

INSERT INTO `tramite_documentos` VALUES (1, 1, 'ccvv', 'MILENA AMAYA DE LA ROSA2013.pdf', '', 1, '2013-03-09 20:43:36', 1, '127.0.0.1');
INSERT INTO `tramite_documentos` VALUES (2, 1, 'ccvv', 'MILENA AMAYA DE LA ROSA2013.pdf', '', 1, '2013-03-10 09:23:52', 1, '127.0.0.1');
INSERT INTO `tramite_documentos` VALUES (3, 3, 'huh', 'cpanelhijostartics.docx', '', 1, '2013-03-10 18:46:30', 1, '127.0.0.1');
INSERT INTO `tramite_documentos` VALUES (4, 3, 'xls', 'Libro1.xlsx', '', 1, '2013-03-10 18:48:44', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_estado`
-- 

CREATE TABLE `tramite_estado` (
  `ext_id` int(11) NOT NULL auto_increment,
  `ext_nombre` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `ext_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `ext_estado` int(1) NOT NULL default '1',
  `ext_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `ext_usu_id` bigint(20) NOT NULL,
  `ext_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

-- 
-- Volcar la base de datos para la tabla `tramite_estado`
-- 

INSERT INTO `tramite_estado` VALUES (1, 'ASIGNADO', 'CUANDO EL TRAMITE ES INGRESADO EN EL SISTEMA, SE ASIGNA A UNA PERSONA', 1, '2012-05-11 22:21:55', 1, '');
INSERT INTO `tramite_estado` VALUES (2, 'EN PROCESO', 'SE EJECUTO EL PRIMER PASO DEL PROCESO DEL TRAMITE EN CUESTION', 1, '2012-09-24 14:01:46', 1, '127.0.0.1');
INSERT INTO `tramite_estado` VALUES (3, 'REASIGNADO', 'SE VUELVE A ASIGNAR EL TRAMITE  A OTRO FUNCIONARIO POR EL LÃƒÂDER O ADMINISTRADOR.', 1, '2013-01-06 10:14:03', 1, '127.0.0.1');
INSERT INTO `tramite_estado` VALUES (4, 'PRORROGADO', 'SE AMPLIA O SE ALARGA EL TIEMPO DEL PROCESO DEL TRAMITE, ESTA PRORROGA DEBE TENER EL VISTO BUENO DEL LÃƒÂDER.', 1, '2013-01-06 10:13:33', 1, '127.0.0.1');
INSERT INTO `tramite_estado` VALUES (5, 'SUSPENDIDO', 'NO ES POSIBLE DILIGENCIAR EL TRAMITE  POR FALTA DE ALGUN REQUISITO DEL SOLICITANTE, ES DECIR QUE EL RESPONSABLE ES EL SOLICITANTE', 1, '2013-01-06 10:14:31', 1, '127.0.0.1');
INSERT INTO `tramite_estado` VALUES (6, 'FINALIZADO', 'TRAMITE DILIGENCIADO O GESTIONADO CON ÃƒÂ‰XITO.', 1, '2013-01-06 10:12:58', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_frecuencia`
-- 

CREATE TABLE `tramite_frecuencia` (
  `txf_id` int(11) NOT NULL auto_increment,
  `txf_nombre` varchar(60) collate utf8_spanish2_ci NOT NULL,
  `txf_dias` int(5) NOT NULL,
  `txf_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txf_usu_id` int(11) NOT NULL,
  `txf_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `txf_estado` int(1) NOT NULL default '1',
  PRIMARY KEY  (`txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Frecuencia de los tramites en dias' AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `tramite_frecuencia`
-- 

INSERT INTO `tramite_frecuencia` VALUES (1, 'Diario', 1, '2012-07-11 20:11:47', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (2, 'Semanal', 7, '2012-08-27 14:36:34', 1, '190.85.79.201', 1);
INSERT INTO `tramite_frecuencia` VALUES (3, 'Mensual', 30, '2012-07-10 19:56:44', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (4, 'Semestral', 180, '2012-07-10 19:57:06', 1, 'MILE-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (7, 'N/A (Sin repeticion)', 0, '2012-08-17 13:42:29', 1, 'mile-PC', 1);
INSERT INTO `tramite_frecuencia` VALUES (8, 'CATORCENAL', 14, '2012-08-24 08:48:17', 1, '190.85.79.201', 1);
INSERT INTO `tramite_frecuencia` VALUES (9, 'BIMESTRAL', 60, '2012-08-24 09:05:55', 1, '190.85.79.201', 1);
INSERT INTO `tramite_frecuencia` VALUES (10, 'QUINCENAL', 15, '2012-08-27 14:48:04', 1, '190.85.79.201', 1);
INSERT INTO `tramite_frecuencia` VALUES (11, 'TRIMESTRAL', 90, '2012-08-27 14:48:24', 1, '190.85.79.201', 1);
INSERT INTO `tramite_frecuencia` VALUES (12, 'ANUAL', 360, '2012-08-27 14:48:39', 1, '190.85.79.201', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_observaciones`
-- 

CREATE TABLE `tramite_observaciones` (
  `txo_id` int(11) NOT NULL auto_increment,
  `txo_tra_id` int(11) NOT NULL,
  `txo_ext_id` int(11) NOT NULL COMMENT 'Estado Tramite',
  `txo_usu_id` int(11) NOT NULL,
  `txo_txe_id` int(11) NOT NULL COMMENT 'Tipo empresa Cliente',
  `txo_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txo_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `txo_reales` text collate utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL default '1',
  `txo_ip` varchar(200) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txo_id`),
  KEY `txo_tra_id` (`txo_tra_id`),
  KEY `txo_usu_id` (`txo_usu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `tramite_observaciones`
-- 

INSERT INTO `tramite_observaciones` VALUES (1, 1, 1, 1, 0, '2013-03-05 21:46:00', 'INCORRECTO', '', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (2, 2, 1, 1, 0, '2013-03-10 14:35:23', 'LAURITA', '', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (3, 3, 1, 1, 0, '2013-03-10 16:50:42', 'KOKO', '', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (4, 3, 1, 1, 0, '2013-03-10 18:49:28', 'EN CINCO MINUTOS', 'NADA POR HACER', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (5, 3, 3, 1, 0, '2013-03-10 20:29:35', 'FULL', 'A CARITO', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (6, 3, 3, 1, 0, '2013-03-10 20:30:24', 'FULL', 'A CARITO', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (7, 3, 3, 1, 0, '2013-03-10 20:31:18', 'FULL', 'A CARITO', 1, '127.0.0.1');
INSERT INTO `tramite_observaciones` VALUES (8, 3, 3, 1, 0, '2013-03-10 20:35:01', 'FULL', 'A CARITO', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_pasos`
-- 

CREATE TABLE `tramite_pasos` (
  `pxt_id` int(11) NOT NULL auto_increment,
  `pxt_txt_id` int(11) NOT NULL,
  `pxt_txp_id` int(1) NOT NULL COMMENT 'prefijo',
  `pxt_nombre` varchar(255) collate utf8_spanish2_ci NOT NULL,
  `pxt_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `pxt_tmpolimite` int(11) NOT NULL,
  `pxt_uxt_id` int(1) NOT NULL default '1' COMMENT 'Dias',
  `pxt_estado` int(1) NOT NULL default '1',
  `pxt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `pxt_usu_id` bigint(20) NOT NULL,
  `pxt_equipo` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `pxt_ip` varchar(20) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`pxt_id`,`pxt_txt_id`),
  KEY `fk_tipotramite` (`pxt_txt_id`),
  KEY `pxt_txp_id` (`pxt_txp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Pasos de los Tipo_Tramites' AUTO_INCREMENT=21 ;

-- 
-- Volcar la base de datos para la tabla `tramite_pasos`
-- 

INSERT INTO `tramite_pasos` VALUES (1, 1, 1, 'RECOGER FACTURAS DEL DEPARTAMENTO', 'ES RECOGER FACTURAS', 2, 1, 1, '2013-01-03 21:24:04', 1, '', '');
INSERT INTO `tramite_pasos` VALUES (2, 1, 1, 'DILIGENCIAR SISTEMA CONTABILIDAD', 'DILIENCIAR ESTAS FACTURAS', 2, 1, 1, '2013-01-03 21:25:13', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (3, 2, 1, 'RECEPCION ACTA EXTERNA PREVIA', '', 1, 1, 1, '2013-01-03 21:46:36', 1, '', '');
INSERT INTO `tramite_pasos` VALUES (4, 2, 1, 'DILIGENCIA ACTA', '', 1, 1, 1, '2013-01-03 21:47:22', 1, '', '');
INSERT INTO `tramite_pasos` VALUES (5, 1, 2, 'FISCALIZAR', '', 5, 1, 1, '2013-01-03 21:54:32', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (6, 3, 1, 'RECEPCION QUEJA', 'LA PERSONA ENCARGADA DE RECIBIR LOS DOCUMENTOS EN LA EMPRESA REGISTRA ESTE TRAMITE INDICANDO LA EMPRESA QUE LO ENVIA', 1, 1, 1, '2013-01-04 15:24:27', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (7, 3, 1, 'DIRECCION QUEJA HACIA DEPARTAMENTO', 'SE DIRIGE LA QUEJA HACIA EL DEPARTAMENTO, BUSCANDO RESPUESTAS O OTRAS VERSIONES', 2, 1, 1, '2013-01-04 15:38:35', 1, '', '');
INSERT INTO `tramite_pasos` VALUES (8, 3, 1, 'PREPARAR RESPUESTA AL USUARIO AFECTADO', '', 1, 1, 1, '2013-01-04 15:28:18', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (9, 3, 1, 'ENTREGA SOLUCION AL USUARIO AFECTADO', 'SE ELABORA SOLUCIÃƒÂ“N PARA DEJAR SATISFECHO AL CLIENTE', 1, 1, 1, '2013-01-04 15:29:31', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (10, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:19:44', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (11, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:23:27', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (12, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:24:07', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (13, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:26:07', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (14, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:27:47', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (15, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:33:09', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (16, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:33:50', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (17, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 13:34:31', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (18, 4, 1, 'PREPARACION ASUNTO SERVIDOR', '', 1, 1, 1, '2013-03-01 07:59:26', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (19, 4, 1, 'RADICACION INFORME FIRMA EDUARDO', '', 1, 1, 1, '2013-03-01 08:00:07', 1, '127.0.0.1', '');
INSERT INTO `tramite_pasos` VALUES (20, 4, 2, 'ACOMPAÃ‘AMIENTO', '', 2, 1, 1, '2013-03-01 08:00:40', 1, '127.0.0.1', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_prefijo`
-- 

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

CREATE TABLE `tramite_reasignacion` (
  `txr_id` int(11) NOT NULL auto_increment,
  `txr_tra_id` int(11) NOT NULL,
  `txr_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txr_usuinicial` int(11) NOT NULL,
  `txr_usuasig` int(11) NOT NULL,
  `txr_observaciones` text collate utf8_spanish2_ci NOT NULL,
  `txr_estado` int(1) NOT NULL default '1',
  `txr_usu_guarda` int(11) NOT NULL,
  `txr_ciales` text collate utf8_spanish2_ci NOT NULL,
  `txr_ip` varchar(15) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txr_id`),
  KEY `txr_tra_id` (`txr_tra_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tramite_reasignacion`
-- 

INSERT INTO `tramite_reasignacion` VALUES (1, 3, '2013-03-10 20:31:18', 1, 10, 'A CARITO', 1, 1, 'FULL', '127.0.0.1');
INSERT INTO `tramite_reasignacion` VALUES (2, 3, '2013-03-10 20:35:01', 1, 10, 'A CARITO', 1, 1, 'FULL', '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_seguimiento`
-- 

CREATE TABLE `tramite_seguimiento` (
  `txs_id` int(10) unsigned NOT NULL auto_increment,
  `txs_tra_id` int(11) NOT NULL COMMENT 'id tramite',
  `txs_usu_id` int(11) NOT NULL COMMENT 'id usuario',
  `txs_asig_id` int(11) NOT NULL COMMENT 'Usuario Asignado',
  `txs_ip` varchar(50) collate utf8_spanish2_ci NOT NULL COMMENT 'ip del usuario',
  `txs_ext_id` int(11) NOT NULL COMMENT 'Estado del tramite',
  `txs_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`txs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `tramite_seguimiento`
-- 

INSERT INTO `tramite_seguimiento` VALUES (1, 1, 1, 1, '127.0.0.1', 1, '2013-03-05 21:46:00');
INSERT INTO `tramite_seguimiento` VALUES (2, 2, 1, 8, '127.0.0.1', 1, '2013-03-10 14:35:23');
INSERT INTO `tramite_seguimiento` VALUES (3, 3, 1, 1, '127.0.0.1', 1, '2013-03-10 16:50:42');
INSERT INTO `tramite_seguimiento` VALUES (4, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:17:01');
INSERT INTO `tramite_seguimiento` VALUES (5, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:18:08');
INSERT INTO `tramite_seguimiento` VALUES (6, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:22:25');
INSERT INTO `tramite_seguimiento` VALUES (7, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:29:35');
INSERT INTO `tramite_seguimiento` VALUES (8, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:30:24');
INSERT INTO `tramite_seguimiento` VALUES (9, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:31:18');
INSERT INTO `tramite_seguimiento` VALUES (10, 3, 1, 10, '127.0.0.1', 3, '2013-03-10 20:35:01');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_tipo`
-- 

CREATE TABLE `tramite_tipo` (
  `txt_id` int(11) NOT NULL auto_increment,
  `txt_dxe_id` int(11) NOT NULL COMMENT 'Departamento Grupo Alianza',
  `txt_txf_id` int(11) NOT NULL default '1' COMMENT 'Frecuencia',
  `txt_nombre` varchar(200) collate utf8_spanish2_ci NOT NULL,
  `txt_dias` int(2) NOT NULL,
  `txt_repite` enum('S','N') collate utf8_spanish2_ci NOT NULL default 'N',
  `txt_veces` int(3) NOT NULL COMMENT 'Veces Repite',
  `txt_quin1` int(2) NOT NULL,
  `txt_quin2` int(2) NOT NULL,
  `txt_ultmes` enum('S','N') collate utf8_spanish2_ci NOT NULL default 'N',
  `txt_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txt_tmaximo` int(11) NOT NULL,
  `txt_uxt_id` int(11) NOT NULL default '1' COMMENT 'Solo Dias',
  `txt_estado` int(1) NOT NULL default '1',
  `txt_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txt_usu_id` bigint(20) NOT NULL,
  `txt_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `txt_ip` varchar(60) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txt_id`),
  KEY `txt_txf_id` (`txt_txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `tramite_tipo`
-- 

INSERT INTO `tramite_tipo` VALUES (1, 0, 3, 'CIERRE FACTURACION', 2, 'S', 12, 0, 0, '', 'ESTO ES UN CIERRE DE FACTURAS DE CONTABILIDAD', 4, 1, 1, '2013-01-03 21:22:52', 1, '127.0.0.1', '');
INSERT INTO `tramite_tipo` VALUES (2, 0, 7, 'ACTA REUNION EXTERNA', 0, 'N', 0, 0, 0, '', 'ES EL REGISTRO DE UN ACTA', 2, 1, 1, '2013-01-03 21:26:08', 1, '127.0.0.1', '');
INSERT INTO `tramite_tipo` VALUES (3, 0, 10, 'QUEJA CLIENTE CONSTRUCCION', 0, 'S', 4, 5, 20, '', 'UNA QUEJA ES UN REGALO, ES UNA OPORTUNIDAD PARA MEJORAR Y CONOCER LA OPINIÃƒÂ³N DEL CLIENTE SOBRE NUESTRO SERVICIO, PORQUE PUEDE HABER CLIENTES INSATISFECHOS QUE NO SE QUEJAN, Y SOLO CONOCEMOS SU MALESTAR CUANDO SE VAN.\r\n\r\nNO ES UN FRACASO, UNA INJUSTICIA, UNA DISCULPA PARA NO PAGAR, DETRÃƒÂ¡S DE ELLAS SIEMPRE HAY INFORMACIÃƒÂ³N VALIOSA:\r\n\r\nNOS PERMITEN CONOCER LA PERCEPCIÃƒÂ³N QUE EL CLIENTE TIENE DE NUESTROS SERVICIOS.', 5, 1, 1, '2013-01-04 15:21:56', 1, '127.0.0.1', '');
INSERT INTO `tramite_tipo` VALUES (4, 0, 2, 'ACTA REUNION SISTEMAS', 2, 'S', 3, 0, 0, '', '', 2, 1, 1, '2013-03-01 07:58:41', 1, '127.0.0.1', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tramite_tipo_origen`
-- 

CREATE TABLE `tramite_tipo_origen` (
  `txo_id` int(11) NOT NULL auto_increment,
  `txo_nombre` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `txo_descripcion` text collate utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL default '1',
  `txo_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `txo_usu_id` bigint(20) NOT NULL,
  `txo_equipo` varchar(100) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`txo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Origen interno o externo' AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tramite_tipo_origen`
-- 

INSERT INTO `tramite_tipo_origen` VALUES (1, 'Interno (tramite en la propia empresa)', 'Se refiere a un tramite en la propia empresa', 1, '2012-07-11 17:07:05', 1, 'MILE-PC');
INSERT INTO `tramite_tipo_origen` VALUES (2, 'Externa (tramite proveniente de una entidad externa))', 'Se refiere a que el tramite es para o desde una empresa cliente', 1, '2012-07-11 17:06:54', 1, 'MILE-PC');
INSERT INTO `tramite_tipo_origen` VALUES (3, 'JIJIJI', '', 0, '2013-01-03 11:09:53', 1, '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL auto_increment,
  `usu_act_id` int(11) NOT NULL default '1' COMMENT 'Indica si el usuario está activo en el Sistema',
  `usu_usu_id` int(11) NOT NULL default '1' COMMENT 'Usuario que ingresa',
  `usu_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `usu_exc_id` int(20) NOT NULL COMMENT 'id Empresa Cliente',
  `usu_car_id` int(11) NOT NULL,
  `usu_car_lider` int(11) NOT NULL,
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
  KEY `usu_usu_id` (`usu_usu_id`),
  KEY `usu_act_id` (`usu_act_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=17 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 

INSERT INTO `usuario` VALUES (1, 2, 1, '2012-04-18 17:51:04', 0, 1, 1, 1, 'Milena', ' Amaya de la Rosa', 'Milena Amaya ', 78, 'mile', 'ea08e678edbf8892b8d67fc36f4a3bf9', 'milenaamaya@gmail.com', 'milenita@mail.com', 'direccion muy larga', '6888990', 2147483647, 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, '');
INSERT INTO `usuario` VALUES (5, 2, 1, '2012-08-15 18:42:17', 0, 1, 5, 2, 'eDUARDO', 'GRANADA', 'Eduardo Granada', 794444, 'ed95_granada', '18e9a4e174a546758ce0f57b92b74a4b', 'EDO@MAIL.COM', 'EDO@MAIL.COM', 'CALLE 200', '7878N', 3187676, 'LEJOS', 1, '');
INSERT INTO `usuario` VALUES (6, 1, 1, '2012-11-12 15:07:12', 0, 7, 0, 2, 'MARTA HELENA', 'HERRERA SUAREZ', 'MARTA HERRERA', 67890, 'ma_herrera', 'ad51b1143ae374ff9b79091180bc4959', 'MARTA@MAIL.COM', 'LALA@MAIL.COM', 'VERAGUAS', '789789', 31786956, 'MAMA DE JAIRO', 1, '');
INSERT INTO `usuario` VALUES (7, 1, 1, '2012-11-12 15:09:15', 0, 6, 0, 2, 'HUGO ', 'ROMERO PAEZ', 'HUGO PAEZ', 789654321, 'hu_romero', 'e18623c4a60a9cc0e78fbf9c8c7bcf8f', 'HUGO@MAIL.COM', 'HUGO@MAIL.COM', 'ALHAMBRA', '67895', 31245678, 'ES UNA PRUEBITA', 1, '');
INSERT INTO `usuario` VALUES (8, 1, 1, '2012-11-12 15:11:13', 0, 4, 0, 2, 'LAURA ALEJANDRA', 'DIAZ RINCON', 'LAURA DIAZ', 8765432, 'la_diaz', '5ead00903c9d0f4cfa46e91d92edbeea', 'LALA1@MAIL.COM', 'LALA@MAIL.COM', 'CARLOS LLERAS', '4768584', 2147483647, 'ES MI PRINCESITA DIVINA', 1, '');
INSERT INTO `usuario` VALUES (9, 1, 1, '2012-11-30 16:28:59', 0, 5, 0, 2, 'RODRIGO', 'RESTREPO', 'RODRIGUITO', 8888, 'ro38_restrepo', 'db8ca81db03bae39743c0a9b7a612b22', 'II@MM.COM', 'AA@MA.COM', 'BHGHJ', '7676776', 566565, 'HGYGGYGYGY', 1, '');
INSERT INTO `usuario` VALUES (10, 1, 1, '2012-11-30 16:30:11', 0, 0, 5, 2, 'CAROL', 'ARELLANO', 'CARITO', 99778, 'ca_arellano', 'e3a058635658f3b102c36a6524d960bc', 'KOKO@HJ.CON', 'JIJI@NJ.COM', 'HHHHJH', '87879', 7979997, 'HGHJJHJHHGJ', 1, '');
INSERT INTO `usuario` VALUES (11, 1, 1, '2013-01-04 13:11:09', 3, 0, 0, 6, 'JORGE', 'BUCAY', 'JORGE BUCAY', 8989, 'jo_bucay', '827ccb0eea8a706c4c34a16891f84e7b', 'MILENAAMAYA@GMAIL.COM', 'MILENITA@MAIL.COM', 'CALLE 76', '8766', 312455, 'JUYYGYGYYGYGYGYY UHUU HUHU', 1, '');
INSERT INTO `usuario` VALUES (12, 2, 1, '2013-03-19 10:15:10', 0, 4, 0, 2, 'MARCELA', 'MARVAEZ', 'MARCE', 678, 'ma_marvaez', 'b05916a72fb11e0441be94f919dc0fa8', 'MMAIL@NKNK.COM', 'MMAOL@MAIL.COM', 'DIR CRA', '876', 987, 'YGYGYGYG', 1, '');
INSERT INTO `usuario` VALUES (13, 2, 1, '2013-03-19 10:39:58', 0, 1, 10, 2, 'MARCELAJJJ', 'NARVAEZ', 'MARCELA ROJAS', 6789, '', '', 'CARITOO@MAIL.COM', 'CARITO@MAIL.COM', 'DIR', '7878', 300, 'NIGUNITA de todos', 1, '');
INSERT INTO `usuario` VALUES (14, 1, 1, '2013-03-21 10:01:12', 0, 2, 6, 2, 'SARITA MARIA', 'MONTALVO FUENTES', 'SARITA MONTALVO', 7896, 'sa_montalvo', '502b1eba5dddc969ada38b23a41a9726', 'KOKO@HJ.CON', 'CARITO@MAIL.COM', 'HHHHJH', '876', 7979997, 'ESS UNA PRUEBA DE PASSRORD', 1, '');
INSERT INTO `usuario` VALUES (15, 1, 1, '2013-03-21 11:12:33', 0, 7, 0, 2, 'PERLA MARIA', 'RODRIGUEZ OSPINA', 'PERLA OSPINA', 789543, 'pe_rodriguez', 'e6948d8e925e04af8582811b2b7c14d5', 'PERL@MAIL.COM', 'PERL@MAIL.COM', 'HHHHJH', '890', 300, '', 1, '');
INSERT INTO `usuario` VALUES (16, 1, 1, '2013-03-21 11:40:50', 0, 4, 5, 2, 'ERIC ', 'CORBERA', 'ERIC CORBERA', 76578, 'er_corbera', '53d9bbbd3be6466e50b2570e119ff609', 'MMAIL@NKNK.COM', 'MMAOL@MAIL.COM', 'DIR', '87879', 7979997, 'CLASE', 1, '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usu_log`
-- 

CREATE TABLE `usu_log` (
  `uxl_id` bigint(20) NOT NULL auto_increment,
  `uxl_usu_id` int(11) NOT NULL,
  `uxl_activo` int(11) NOT NULL default '0',
  `uxl_accion` varchar(400) collate utf8_spanish2_ci NOT NULL,
  `uxl_equipo` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `uxl_fechahora` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`uxl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla Verifica Usuario Activo' AUTO_INCREMENT=49 ;

-- 
-- Volcar la base de datos para la tabla `usu_log`
-- 

INSERT INTO `usu_log` VALUES (1, 1, 0, 'Ingreso tramiteCIAL201324000', '127.0.0.1', '2013-03-05 21:46:00');
INSERT INTO `usu_log` VALUES (2, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-06 11:22:12');
INSERT INTO `usu_log` VALUES (3, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-06 11:40:26');
INSERT INTO `usu_log` VALUES (4, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-08 09:26:53');
INSERT INTO `usu_log` VALUES (5, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-09 16:29:03');
INSERT INTO `usu_log` VALUES (6, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-09 18:08:37');
INSERT INTO `usu_log` VALUES (7, 1, 0, 'Ingreso Documento tramiteCIAL201324000', '127.0.0.1', '2013-03-09 18:23:17');
INSERT INTO `usu_log` VALUES (8, 1, 0, 'Modifica Documento tramiteCIAL201324000', '127.0.0.1', '2013-03-09 18:29:20');
INSERT INTO `usu_log` VALUES (9, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-09 20:42:31');
INSERT INTO `usu_log` VALUES (10, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 14:34:18');
INSERT INTO `usu_log` VALUES (11, 1, 0, 'Ingreso tramiteCIAL201324001', '127.0.0.1', '2013-03-10 14:35:23');
INSERT INTO `usu_log` VALUES (12, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 16:49:18');
INSERT INTO `usu_log` VALUES (13, 1, 0, 'Ingreso tramiteCIAL201324002', '127.0.0.1', '2013-03-10 16:50:42');
INSERT INTO `usu_log` VALUES (14, 1, 0, 'Carga Documentos tramite ', '127.0.0.1', '2013-03-10 18:48:44');
INSERT INTO `usu_log` VALUES (15, 1, 0, 'Apuntaron observaciones tramite ', '127.0.0.1', '2013-03-10 18:49:28');
INSERT INTO `usu_log` VALUES (16, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 20:14:19');
INSERT INTO `usu_log` VALUES (17, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:17:01');
INSERT INTO `usu_log` VALUES (18, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:18:08');
INSERT INTO `usu_log` VALUES (19, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:22:25');
INSERT INTO `usu_log` VALUES (20, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:29:35');
INSERT INTO `usu_log` VALUES (21, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:30:24');
INSERT INTO `usu_log` VALUES (22, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:31:18');
INSERT INTO `usu_log` VALUES (23, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-10 20:35:01');
INSERT INTO `usu_log` VALUES (24, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 20:35:11');
INSERT INTO `usu_log` VALUES (25, 1, 0, 'Ingreso registro tabla cargos id: 8', '127.0.0.1', '2013-03-10 22:00:43');
INSERT INTO `usu_log` VALUES (26, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-12 12:10:11');
INSERT INTO `usu_log` VALUES (27, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-12 16:04:53');
INSERT INTO `usu_log` VALUES (28, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 10:12:54');
INSERT INTO `usu_log` VALUES (29, 1, 0, 'Ingresar Usuarios', '127.0.0.1', '2013-03-19 10:15:12');
INSERT INTO `usu_log` VALUES (30, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 10:57:54');
INSERT INTO `usu_log` VALUES (31, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 11:06:21');
INSERT INTO `usu_log` VALUES (32, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 20:32:45');
INSERT INTO `usu_log` VALUES (33, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 20:47:30');
INSERT INTO `usu_log` VALUES (34, 1, 1, 'Modificar Usuarios', '127.0.0.1', '2013-03-19 20:48:16');
INSERT INTO `usu_log` VALUES (35, 1, 1, 'Modificar Usuarios', '127.0.0.1', '2013-03-19 22:06:12');
INSERT INTO `usu_log` VALUES (36, 1, 1, 'Modificar Usuarios', '127.0.0.1', '2013-03-19 22:06:29');
INSERT INTO `usu_log` VALUES (37, 1, 1, 'Modificar Usuarios', '127.0.0.1', '2013-03-19 22:15:33');
INSERT INTO `usu_log` VALUES (38, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 10:34:46');
INSERT INTO `usu_log` VALUES (39, 1, 1, 'Cambio cargo lider usuario a MARCELA ROJAS', '127.0.0.1', '2013-03-20 11:01:55');
INSERT INTO `usu_log` VALUES (40, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 18:46:12');
INSERT INTO `usu_log` VALUES (41, 1, 1, 'Cambio cargo lider usuario a MARCELA ROJAS', '127.0.0.1', '2013-03-20 20:37:46');
INSERT INTO `usu_log` VALUES (42, 1, 1, 'Cambio cargo lider usuario a ', '127.0.0.1', '2013-03-21 08:56:48');
INSERT INTO `usu_log` VALUES (43, 1, 1, 'Modificar Usuarios', '127.0.0.1', '2013-03-21 09:39:17');
INSERT INTO `usu_log` VALUES (44, 1, 1, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 10:01:14');
INSERT INTO `usu_log` VALUES (45, 1, 1, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 11:12:35');
INSERT INTO `usu_log` VALUES (46, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-03-21 11:18:48');
INSERT INTO `usu_log` VALUES (47, 14, 1, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 11:40:52');
INSERT INTO `usu_log` VALUES (48, 14, 1, 'Cambio cargo lider usuario a SARITA MONTALVO', '127.0.0.1', '2013-03-21 11:46:46');

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
-- Filtros para la tabla `alianza_sedes`
-- 
ALTER TABLE `alianza_sedes`
  ADD CONSTRAINT `alianza_sedes_ibfk_1` FOREIGN KEY (`axs_exa_id`) REFERENCES `alianza_emp` (`exa_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `documento_ibfk_9` FOREIGN KEY (`doc_ciu_id`) REFERENCES `ciudad` (`ciu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `empresa_cliente`
-- 
ALTER TABLE `empresa_cliente`
  ADD CONSTRAINT `empresa_cliente_ibfk_3` FOREIGN KEY (`exc_txe_id`) REFERENCES `tipo_empresacliente` (`txe_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `empresa_cliente_ibfk_5` FOREIGN KEY (`exc_exg_id`) REFERENCES `empresascliente_grupo` (`exg_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
-- Filtros para la tabla `tipo_empresacliente`
-- 
ALTER TABLE `tipo_empresacliente`
  ADD CONSTRAINT `tipo_empresacliente_ibfk_1` FOREIGN KEY (`txe_ext_id`) REFERENCES `empresas_tipo` (`ext_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite`
-- 
ALTER TABLE `tramite`
  ADD CONSTRAINT `tramite_ibfk_1` FOREIGN KEY (`tra_txt_id`) REFERENCES `tramite_tipo` (`txt_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_ibfk_2` FOREIGN KEY (`tra_ext_id`) REFERENCES `tramite_estado` (`ext_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_adicionales`
-- 
ALTER TABLE `tramite_adicionales`
  ADD CONSTRAINT `tramite_adicionales_ibfk_1` FOREIGN KEY (`pxa_tram_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tramite_documentos`
-- 
ALTER TABLE `tramite_documentos`
  ADD CONSTRAINT `tramite_documentos_ibfk_2` FOREIGN KEY (`dxt_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_observaciones`
-- 
ALTER TABLE `tramite_observaciones`
  ADD CONSTRAINT `tramite_observaciones_ibfk_2` FOREIGN KEY (`txo_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tramite_observaciones_ibfk_3` FOREIGN KEY (`txo_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tramite_pasos`
-- 
ALTER TABLE `tramite_pasos`
  ADD CONSTRAINT `tramite_pasos_ibfk_3` FOREIGN KEY (`pxt_txt_id`) REFERENCES `tramite_tipo` (`txt_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tramite_pasos_ibfk_6` FOREIGN KEY (`pxt_txp_id`) REFERENCES `tramite_prefijo` (`txp_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

-- 
-- Filtros para la tabla `tramite_reasignacion`
-- 
ALTER TABLE `tramite_reasignacion`
  ADD CONSTRAINT `tramite_reasignacion_ibfk_1` FOREIGN KEY (`txr_tra_id`) REFERENCES `tramite` (`tra_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `usuario_ibfk_4` FOREIGN KEY (`usu_per_id`) REFERENCES `perfil` (`per_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_5` FOREIGN KEY (`usu_act_id`) REFERENCES `activo` (`act_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
