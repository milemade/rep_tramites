-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2013 a las 15:05:55
-- Versión del servidor: 5.5.29
-- Versión de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tramites`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activo`
--

CREATE TABLE IF NOT EXISTS `activo` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `act_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`act_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `activo`
--

INSERT INTO `activo` (`act_id`, `act_nombre`, `act_estado`) VALUES
(1, 'ACTIVO', 1),
(2, 'INACTIVO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `axm_id` int(11) NOT NULL AUTO_INCREMENT,
  `axm_nombre_tabla` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axm_descripcion` varchar(180) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axm_texto` text COLLATE utf8_spanish_ci NOT NULL,
  `axm_submenu` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `axm_camposub` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `axm_estado` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `axm_usu_id` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `axm_fechahora` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `axm_equipo` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `axm_ban` int(1) NOT NULL,
  `axm_ip` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`axm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=40 ;

--
-- Volcado de datos para la tabla `admin_menu`
--

INSERT INTO `admin_menu` (`axm_id`, `axm_nombre_tabla`, `axm_descripcion`, `axm_texto`, `axm_submenu`, `axm_camposub`, `axm_estado`, `axm_usu_id`, `axm_fechahora`, `axm_equipo`, `axm_ban`, `axm_ip`) VALUES
(32, 'tramite_tipo_origen', 'Tipo Origen Tramite', 'Fuente u origen del tramite', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0, ''),
(31, 'tramite_frecuencia', 'Frecuencia Tramites', 'Periodo que se repite un tipo de tramite', '', '', 'txf_estado', 'txf_usu_id', 'txf_fechahora', 'txf_equipo', 0, ''),
(30, 'empresas_grupo', 'Clasificación Empresas', 'UNA CLASIFICACIÓN POR TAMAÑO DE LA EMPRESA CLIENTE', '', '', 'gru_estado', 'gru_usu_id', 'gru_fechahora', 'gru_equipo', 1, ''),
(28, 'tipo_documento', 'Tipo Documento', 'Tipo de Documentos que maneja  un trámite', '', '', 'txd_estado', 'txd_usu_id', 'txd_fechahora', 'txd_equipo', 0, ''),
(25, 'tramite_pasos', 'Etapas del tramite', 'Pasos o etapas de la ejecución del trámite', '', 'a.pxt_txt_id', 'pxt_estado', 'pxt_usu_id', 'pxt_fechahora', 'pxt_equipo', 1, 'pxt_ip'),
(26, 'tramite_tipo_origen', 'Origen del Tipo Trámite', 'Origen del trámite (Interno, Externo)', '', '', 'txo_estado', 'txo_usu_id', 'txo_fechahora', 'txo_equipo', 0, ''),
(27, 'tramite_estado', 'Estado del trámite', 'Son los diferentes estados de cada étapa del trámite.', '', '', 'ext_estado', 'ext_usu_id', 'ext_fechahora', 'ext_equipo', 0, ''),
(24, 'tramite_tipo', 'Tipo Tramite', 'Son las Clases de los trámites que maneja la empresa.', 'tramite_pasos', 'pxt_txt_id', 'txt_estado', 'txt_usu_id', 'txt_fechahora', 'txt_equipo', 0, 'txt_ip'),
(22, 'empresa_cliente', 'Empresas Externas', 'Información de las Empresas que tienen tratos comerciales o de servicios con el Grupo Empresarial Alianza', '', 'exc_txe_id', 'exc_estado', 'exc_usu_id', 'exc_fechahora', 'exc_equipo', 0, ''),
(23, 'empresa_sedes', 'Sedes Grupo Empresarial', 'Sedes del Grupo Alianza', 'dep_empresa', 'dxe_sede_id', 'sede_estado', 'sede_usu_id', 'sede_fechahora', 'sede_equipo', 1, ''),
(19, 'departamento', 'Departamentos Colombia', 'Departamentos del país', 'ciudad', 'ciu_dep_id', 'dep_estado', 'dep_usu_id', 'dep_fechahora', 'dep_equipo', 0, ''),
(20, 'ciudad', 'Ciudades', 'Ciudades de los departamentos del país', '', 'a.ciu_dep_id', 'ciu_estado', 'ciu_usu_id', 'ciu_fechahora', 'ciu_equipo', 1, ''),
(21, 'tipo_empresacliente', 'Tipo de Empresa ', 'CLASIFICACIÓN EMPRESAS CLIENTE POR TAMAÑO O CANTIDAD DE EMPLEADOS', 'empresa_cliente', 'exc_txe_id', 'txe_estado', 'txe_usu_id', 'txe_fechahora', 'txe_equipo', 0, ''),
(18, 'cargos', 'Cargos', 'Son los cargos de los empleados del Grupo Empresarial Alianza', '', '', 'car_estado', 'car_usu_id', 'car_fechahora', 'car_equipo', 1, ''),
(17, 'dep_empresa', 'Departamentos Grupo', 'Departamentos de las sedes del Grupo Empresarial Alianza', 'cargos', 'car_dxe_id', 'dxe_estado', 'dxe_usu_id', 'dxe_fechahora', 'dxe_equipo', 1, ''),
(1, 'empresa', 'Grupo Alianza', 'Grupo Empresarial Alianza', 'empresa_sedes', 'sede_emp_id', 'emp_estado', 'emp_usu_id', 'emp_fechahora', 'emp_equipo', 0, ''),
(33, 'alianza_emp', 'Empresas Alianza', 'Son las Empresas que pertenecen al grupo Alianza.', 'alianza_sedes', 'axs_exa_id', 'exa_estado', 'exa_usu_id', 'exa_fechahora', 'exa_equipo', 0, ''),
(34, 'alianza_sedes', 'Sedes Empresas Propias', 'Sedes de las Empresas del Grupo Alianza para el manejo de tramites', 'alianza_dep', 'axe_axs_id', 'axs_estado', 'axs_usu_id', 'axs_fechahora', 'axs_equipo', 1, ''),
(35, 'depxdepal', 'Conf. Departamentos', 'RELACION DEPARTAMENTOS GRUPO EMPRESARIAL CON LOS DEPARTAMENTOS DE LAS EMPRESAS PROPIAS', '', '', 'dxd_estado', 'dxd_usu_id', 'dxd_fechahora', 'dxd_equipo', 0, ''),
(36, 'alianza_dep', 'Deptos Empresas Propias', 'Son los Departamentos de las Empresas de Alianza', '', '', 'axe_estado', 'axe_usu_id', 'axe_fechahora', 'axe_equipo', 1, ''),
(38, 'empresascliente_grupo', 'Grupo Empresas Cliente', 'Es la forma como se agrupan varias empresas del mismo tipo que tienen un funcionamiento centralizado.', 'empresa_cliente', 'exc_exg_id', 'exg_estado', 'exg_usu_id', 'exg_fechahora', 'exg_equipo', 0, ''),
(39, 'empresas_tipo', 'Clases de Empresas', 'DIFERENCIACIÓN CLIENTES DE OTROS TERCEROS', 'tipo_empresacliente', 'txe_ext_id', 'ext_estado', 'ext_usu_id', 'ext_fechahora', 'ext_equipo', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_perfiles`
--

CREATE TABLE IF NOT EXISTS `admin_perfiles` (
  `axp_id` int(11) NOT NULL AUTO_INCREMENT,
  `axp_nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axp_editable` enum('S','N') COLLATE utf8_spanish_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`axp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `admin_perfiles`
--

INSERT INTO `admin_perfiles` (`axp_id`, `axp_nombre`, `axp_editable`) VALUES
(1, 'SuperAdministrador', 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permisos`
--

CREATE TABLE IF NOT EXISTS `admin_permisos` (
  `aper_id` int(11) NOT NULL AUTO_INCREMENT,
  `aper_axp_id` int(11) NOT NULL DEFAULT '0',
  `aper_nombre_tabla` varchar(150) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `aper_txper_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=97 ;

--
-- Volcado de datos para la tabla `admin_permisos`
--

INSERT INTO `admin_permisos` (`aper_id`, `aper_axp_id`, `aper_nombre_tabla`, `aper_txper_id`) VALUES
(49, 1, 'empresa_sedes', 3),
(48, 1, 'empresa_sedes', 1),
(47, 1, 'empresa_cliente', 6),
(46, 1, 'empresa_cliente', 3),
(45, 1, 'empresa_cliente', 1),
(44, 1, 'tipo_empresacliente', 6),
(43, 1, 'tipo_empresacliente', 3),
(42, 1, 'tipo_empresacliente', 1),
(41, 1, 'ciudad', 6),
(40, 1, 'ciudad', 3),
(39, 1, 'ciudad', 1),
(38, 1, 'departamento', 6),
(37, 1, 'departamento', 3),
(36, 1, 'departamento', 1),
(35, 1, 'cargos', 6),
(34, 1, 'cargos', 3),
(32, 1, 'dep_empresa', 6),
(31, 1, 'dep_empresa', 3),
(30, 1, 'dep_empresa', 1),
(1, 1, 'empresa', 3),
(33, 1, 'cargos', 1),
(74, 1, 'depxdepal', 1),
(50, 1, 'empresa_sedes', 6),
(51, 1, 'tramite_tipo', 1),
(52, 1, 'tramite_tipo', 3),
(53, 1, 'tramite_tipo', 6),
(54, 1, 'tramite_pasos', 1),
(55, 1, 'tramite_pasos', 3),
(56, 1, 'tramite_pasos', 6),
(57, 1, 'tramite_tipo_origen ', 3),
(58, 1, 'tramite_estado', 3),
(59, 1, 'tipo_documento', 1),
(60, 1, 'tipo_documento', 3),
(61, 1, 'tipo_documento', 6),
(67, 1, 'tramite_tipo_origen', 1),
(66, 1, 'tramite_frecuencia', 3),
(65, 1, 'empresas_grupo', 3),
(68, 1, 'tramite_tipo_origen', 3),
(69, 1, 'tramite_tipo_origen', 6),
(70, 1, 'alianza_emp', 3),
(71, 1, 'alianza_sedes', 1),
(72, 1, 'alianza_sedes', 3),
(73, 1, 'alianza_sedes', 6),
(75, 1, 'depxdepal', 3),
(76, 1, 'depxdepal', 6),
(77, 1, 'alianza_dep', 1),
(78, 1, 'alianza_dep', 3),
(79, 1, 'alianza_dep', 6),
(86, 1, 'empresascliente_grupo', 3),
(85, 1, 'empresascliente_grupo', 1),
(84, 1, 'alianza_emp', 1),
(87, 1, 'empresascliente_grupo', 6),
(88, 1, 'empresas_grupo', 1),
(89, 1, 'alianza_emp', 6),
(90, 1, 'tramite_frecuencia', 1),
(91, 1, 'empresas_tipo', 1),
(92, 1, 'empresas_tipo', 3),
(93, 1, 'empresas_tipo', 6),
(94, 1, 'empresas_grupo', 6),
(95, 1, 'tramite_estado', 1),
(96, 1, 'tramite_estado', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tablas`
--

CREATE TABLE IF NOT EXISTS `admin_tablas` (
  `axt_id` int(10) NOT NULL AUTO_INCREMENT,
  `axt_nombre_tabla` varchar(80) COLLATE utf8_spanish_ci DEFAULT '',
  `axt_nombre_campo` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_campo_es_id` int(1) NOT NULL DEFAULT '0',
  `axt_tipo_campo` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_tabla_relacion` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_campo_relacion` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_campo_imprimir` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_txr_idioma` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_campo_visual` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_visualizar` varchar(5) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_rotulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axt_idi_id` int(10) NOT NULL DEFAULT '1',
  `axt_txa_id` int(10) NOT NULL DEFAULT '0',
  `axt_order` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`axt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='empresas_tipo' AUTO_INCREMENT=221 ;

--
-- Volcado de datos para la tabla `admin_tablas`
--

INSERT INTO `admin_tablas` (`axt_id`, `axt_nombre_tabla`, `axt_nombre_campo`, `axt_campo_es_id`, `axt_tipo_campo`, `axt_tabla_relacion`, `axt_campo_relacion`, `axt_campo_imprimir`, `axt_txr_idioma`, `axt_campo_visual`, `axt_visualizar`, `axt_rotulo`, `axt_idi_id`, `axt_txa_id`, `axt_order`) VALUES
(219, 'empresa_cliente', 'exc_mail', 0, 'email', '', '', '', '', '', '', 'E.mail contacto', 1, 0, ''),
(218, 'empresa_cliente', 'exc_contacto', 0, 'required', '', '', '', '', '', '', 'Nombre persona contacto', 1, 0, ''),
(216, 'empresa_cliente', 'exc_fijo', 0, 'text', '', '', '', '', '', '', 'Teléfono fijo', 1, 0, ''),
(217, 'empresa_cliente', 'exc_celular', 0, 'text', '', '', '', '', '', '', 'Teléfono celular', 1, 0, ''),
(113, 'tipo_documento', 'txd_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txd_nombre '),
(112, 'tramite_estado', 'ext_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Estado', 1, 0, ''),
(108, 'tramite_tipo_origen ', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0, ''),
(111, 'tramite_estado', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'ext_nombre'),
(106, 'tramite_pasos', 'pxt_tmpolimite', 0, 'numeror', '', '', '', '', '', '', 'Plazo máximo (Dias)', 1, 0, ''),
(105, 'tramite_pasos', 'pxt_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Etapa Trámite', 1, 0, ''),
(103, 'tramite_pasos', 'pxt_txp_id', 0, 'selectt', 'tramite_prefijo', 'txp_id', 'txp_nombre', '', 'txp_estado', '', 'Tiempo para realizar Trámite', 1, 0, ''),
(102, 'tramite_pasos', 'pxt_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Etapa del Trámite', 1, 0, ''),
(101, 'tramite_pasos', 'pxt_txt_id', 0, 'select', 'tramite_tipo', 'txt_id', 'txt_nombre', '', 'txt_estado', 'SI', 'Tipo de Trámite', 1, 0, ''),
(97, 'empresa_sedes', 'sede_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Sede', 1, 0, ''),
(96, 'empresa_sedes', 'sede_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede', 1, 0, ''),
(95, 'empresa_sedes', 'sede_emp_id', 0, 'select', 'empresa', 'emp_id', 'emp_nombre', '', 'emp_estado', 'SI', 'Nombre Empresa', 1, 0, ''),
(94, 'empresa_sedes', 'sede_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresa.emp_nombre,empresa_sedes.sede_nombre'),
(214, 'empresa_cliente', 'exc_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0, ''),
(215, 'empresa_cliente', 'exc_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0, ''),
(89, 'tipo_empresacliente', 'txe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Empresa', 1, 0, ''),
(86, 'ciudad', 'ciu_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Ciudad', 1, 0, ''),
(85, 'ciudad', 'ciu_dep_id', 0, 'select', 'departamento', 'dep_id', 'dep_nombre', '', 'dep_estado', 'SI', 'Departamento', 1, 0, ''),
(84, 'ciudad', 'ciu_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'departamento.dep_nombre,ciudad.ciu_nombre'),
(83, 'departamento', 'dep_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0, ''),
(81, 'cargos', 'car_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Cargo', 1, 0, ''),
(82, 'departamento', 'dep_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'departamento.dep_nombre'),
(213, 'empresa_cliente', 'exc_exg_id', 0, 'selectt', 'empresascliente_grupo', 'exg_id', 'exg_nombre', '', 'exg_estado', '', 'Grupo Empresas', 1, 0, ''),
(80, 'cargos', 'car_dxe_id', 0, 'depto', '', '', '', '', '', '', 'Departamento Grupo Alianza', 1, 0, ''),
(79, 'cargos', 'car_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'car_dxe_id,car_id,car_nombre'),
(78, 'dep_empresa', 'dxe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Descripcion Departamento', 1, 0, ''),
(76, 'dep_empresa', 'dxe_sede_id', 0, 'select', 'v_empsede', 'sede_id', 'sede_nombre', '', 'sede_estado', 'SI', 'Empresa - Sede', 1, 0, ''),
(74, 'empresa', 'emp_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa', 1, 0, ''),
(75, 'dep_empresa', 'dxe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'v_empsede.sede_nombre,dep_empresa.dxe_nombre'),
(115, 'tipo_documento', 'txd_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Tipo Documento', 1, 0, ''),
(114, 'tipo_documento', 'txd_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Documento', 1, 0, ''),
(100, 'tramite_pasos', 'pxt_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'pxt_txp_id,pxt_nombre'),
(88, 'tipo_empresacliente', 'txe_ext_id', 0, 'select', 'empresas_tipo', 'ext_id', 'ext_nombre', '', 'ext_estado', 'SI', 'Clasificación Tipo', 1, 0, ''),
(87, 'tipo_empresacliente', 'txe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresas_tipo.ext_nombre,tipo_empresacliente.txe_nombre'),
(77, 'dep_empresa', 'dxe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Departamento', 1, 0, ''),
(1, 'empresa', 'emp_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'emp_nombre'),
(2, 'empresa', 'emp_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Grupo', 1, 0, ''),
(212, 'empresa_cliente', 'exc_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa ', 1, 0, ''),
(125, 'cargos', 'car_revisa_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Lider', 1, 0, ''),
(126, 'cargos', 'car_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones del Cargo', 1, 0, ''),
(128, 'empresas_grupo', 'gru_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'empresas_grupo.gru_id'),
(129, 'empresas_grupo', 'gru_nombre', 0, 'text', '', '', '', '', '', 'SI', 'Nombre Clasificación', 1, 0, ''),
(130, 'empresas_grupo', 'gru_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Clasificación', 1, 0, ''),
(131, 'tramite_frecuencia', 'txf_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txf_dias'),
(132, 'tramite_frecuencia', 'txf_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre frecuencia', 1, 0, ''),
(133, 'tramite_frecuencia', 'txf_dias', 0, 'numeror', '', '', '', '', '', '', 'Tiempo en Dias', 1, 0, ''),
(135, 'empresa', 'emp_direccion', 0, 'text', '', '', '', '', '', '', 'Dirección Empresa', 1, 0, ''),
(136, 'empresa', 'emp_telefono', 0, 'text', '', '', '', '', '', '', 'Telefono Empresa', 1, 0, ''),
(140, 'empresa', 'emp_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa', 1, 0, ''),
(142, 'ciudad', 'ciu_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Ciudad', 1, 0, ''),
(143, 'departamento', 'dep_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Departamento', 1, 0, ''),
(144, 'tramite_tipo_origen', 'txo_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txo_nombre'),
(145, 'tramite_tipo_origen', 'txo_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Tipo Origen', 1, 0, ''),
(146, 'tramite_tipo_origen', 'txo_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Tipo Origen', 1, 0, ''),
(147, 'alianza_emp', 'exa_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_emp.exa_nombre'),
(148, 'alianza_emp', 'exa_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Empresa Propia', 1, 0, ''),
(149, 'alianza_emp', 'exa_nit', 0, 'text', '', '', '', '', '', '', 'Nit Empresa Propia', 1, 0, ''),
(150, 'alianza_emp', 'exa_direccion', 0, 'text', '', '', '', '', '', '', 'Direccion Empresa Propia', 1, 0, ''),
(151, 'alianza_emp', 'exa_telefono', 0, 'text', '', '', '', '', '', '', 'Telefono Empresa Propia', 1, 0, ''),
(152, 'alianza_emp', 'exa_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Empresa Propia', 1, 0, ''),
(153, 'alianza_sedes', 'axs_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_emp.exa_nombre, alianza_sedes.axs_nombre'),
(154, 'alianza_sedes', 'axs_exa_id', 0, 'select', 'alianza_emp', 'exa_id', 'exa_nombre', '', 'exa_estado', 'SI', 'Empresa Propia', 1, 0, ''),
(155, 'alianza_sedes', 'axs_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Sede Empresa Propia', 1, 0, ''),
(156, 'alianza_sedes', 'axs_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Sede Empresa Propia', 1, 0, ''),
(157, 'depxdepal', 'dxd_id', 1, '', '', '', '', '', '', '', '', 1, 0, ''),
(158, 'depxdepal', 'dxd_dxe_id', 0, 'depto', '', '', '', '', '', 'SI', 'Departamento Grupo ', 1, 0, ''),
(159, 'depxdepal', 'dxd_axe_id', 0, 'alianza', '', '', '', '', '', '', 'Departamento Empresa Propia', 1, 0, ''),
(160, 'alianza_dep', 'axe_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'alianza_sedes.axs_nombre,alianza_dep.axe_nombre'),
(161, 'alianza_dep', 'axe_axs_id', 0, 'select', 'alianza_sedes', 'axs_id', 'axs_nombre', '', 'axs_estado', 'SI', 'Sede Empresa Propia', 1, 0, ''),
(162, 'alianza_dep', 'axe_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Dpto Empresa Propia', 1, 0, ''),
(163, 'alianza_dep', 'axe_siglas', 0, 'required', '', '', '', '', '', '', 'Siglas Dep Empresa Propia', 1, 0, ''),
(164, 'alianza_dep', 'axe_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Depto Empresa Propia', 1, 0, ''),
(168, 'empresascliente_grupo', 'exg_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Grupo Empresas Cliente', 1, 0, ''),
(167, 'empresascliente_grupo', 'exg_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'exg_nombre'),
(211, 'empresa_cliente', 'exc_txe_id', 0, 'select', 'tipo_empresacliente', 'txe_id', 'txe_nombre', '', 'txe_estado', 'SI', 'Tipo de Empresa', 1, 0, ''),
(209, 'empresa_cliente', 'exc_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'tipo_empresacliente.txe_nombre,empresa_cliente.exc_nombre asc'),
(210, 'empresa_cliente', 'exc_ext_id', 0, 'seltipo', 'empresas_tipo', 'ext_id', 'ext_nombre', '', 'ext_estado', '', 'Clase de Empresa', 1, 0, ''),
(183, 'empresas_tipo', 'ext_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'ext_nombre'),
(184, 'empresas_tipo', 'ext_nombre', 0, 'required', '', '', '', '', '', 'SI', 'Nombre Clase de Empresa', 1, 0, ''),
(185, 'empresas_tipo', 'ext_obs', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Clase de Empresa', 1, 0, ''),
(186, 'tipo_empresacliente', 'txe_descricion', 0, 'textareas', '', '', '', '', '', '', 'Observaciones Tipo Empresa', 1, 0, ''),
(198, 'tramite_tipo', 'txt_nombre', 0, 'quin', '', '', '', '', '', 'SI', 'Nombre Tipo Trámite', 1, 0, ''),
(197, 'tramite_tipo', 'txt_id', 1, '', '', '', '', '', '', '', '', 1, 0, 'txt_nombre'),
(196, 'tramite_estado', 'ext_descripcion', 0, 'textareas', '', '', '', '', '', '', 'Descripción Estado', 1, 0, ''),
(220, 'empresa_cliente', 'exc_res_id', 0, 'cargos', '', '', '', '', '', '', 'Cargo Responsable Alianza', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_archivo`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_archivo` (
  `ati_id` int(11) NOT NULL AUTO_INCREMENT,
  `ati_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`ati_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `admin_tipo_archivo`
--

INSERT INTO `admin_tipo_archivo` (`ati_id`, `ati_nombre`) VALUES
(1, 'Imagen'),
(2, 'Documentos'),
(3, 'Archivo Plano'),
(4, 'SWF'),
(5, 'Downloads'),
(6, 'Videos'),
(7, 'Ropa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_permisos`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_permisos` (
  `txper_id` int(11) NOT NULL AUTO_INCREMENT,
  `txper_desc` varchar(80) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`txper_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `admin_tipo_permisos`
--

INSERT INTO `admin_tipo_permisos` (`txper_id`, `txper_desc`) VALUES
(1, 'Insertar'),
(2, 'Borrar Fisico'),
(3, 'Editar'),
(4, 'Buscar'),
(5, 'Exportar a Excel'),
(6, 'Borrar Logico'),
(7, 'Consultar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_usuarios`
--

CREATE TABLE IF NOT EXISTS `admin_usuarios` (
  `axu_id` int(11) NOT NULL AUTO_INCREMENT,
  `axu_documento` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_nombre` varchar(250) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_login` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_clave` varchar(100) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_txp_id` int(10) NOT NULL DEFAULT '0',
  `axu_mail` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_fxa_id` int(10) NOT NULL DEFAULT '0',
  `axu_dir` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `axu_tel` varchar(200) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`axu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci PACK_KEYS=0 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `admin_usuarios`
--

INSERT INTO `admin_usuarios` (`axu_id`, `axu_documento`, `axu_nombre`, `axu_login`, `axu_clave`, `axu_txp_id`, `axu_mail`, `axu_fxa_id`, `axu_dir`, `axu_tel`) VALUES
(1, '', 'SuperAdministrador', 'cirko', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', 1, '', 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_dep`
--

CREATE TABLE IF NOT EXISTS `alianza_dep` (
  `axe_id` int(11) NOT NULL AUTO_INCREMENT,
  `axe_axs_id` int(11) NOT NULL,
  `axe_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `axe_siglas` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `axe_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `axe_estado` int(1) NOT NULL DEFAULT '1',
  `axe_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `axe_usu_id` bigint(20) NOT NULL,
  `axe_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`axe_id`,`axe_axs_id`),
  UNIQUE KEY `axe_siglas` (`axe_siglas`),
  UNIQUE KEY `axe_siglas_2` (`axe_siglas`),
  KEY `axe_sede_id` (`axe_axs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos Alinza para los Tramites' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `alianza_dep`
--

INSERT INTO `alianza_dep` (`axe_id`, `axe_axs_id`, `axe_nombre`, `axe_siglas`, `axe_descripcion`, `axe_estado`, `axe_fechahora`, `axe_usu_id`, `axe_equipo`) VALUES
(1, 1, 'Depto sede1', 'DSU', 'hhhuuhuhu', 1, '2012-07-27 13:08:03', 1, ''),
(2, 1, 'DEPTO GIR 2', 'DG2', 'HGGGYGY', 1, '2012-08-24 03:46:27', 1, '127.0.0.1'),
(3, 7, 'COMERCIAL', 'CIAL', 'ES EL DEPARTAMENTO COMERCIAL ENCARGADO DE LA GESTION COMERCIAL', 1, '2012-09-28 02:32:16', 1, '192.168.10.43'),
(4, 8, 'INVESTIGACIÃ“N Y DESARROLLO', 'IDC', '', 1, '2012-12-10 20:22:05', 1, '127.0.0.1'),
(5, 8, 'AUDITORIA', 'ADC', '', 1, '2012-12-10 20:22:40', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_emp`
--

CREATE TABLE IF NOT EXISTS `alianza_emp` (
  `exa_id` int(11) NOT NULL AUTO_INCREMENT,
  `exa_axg_id` int(11) NOT NULL COMMENT 'Grpo de Empresas Alianza',
  `exa_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `exa_nit` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `exa_direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `exa_telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `exa_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `exa_estado` int(1) NOT NULL DEFAULT '1',
  `exa_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exa_usu_id` bigint(20) NOT NULL,
  `exa_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`exa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Alianza' AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `alianza_emp`
--

INSERT INTO `alianza_emp` (`exa_id`, `exa_axg_id`, `exa_nombre`, `exa_nit`, `exa_direccion`, `exa_telefono`, `exa_obs`, `exa_estado`, `exa_fechahora`, `exa_usu_id`, `exa_equipo`) VALUES
(1, 1, 'CONSTRUCTORA ALIANZA', '989898', '', '', '', 0, '2012-08-04 03:16:44', 1, 'MILE-PC'),
(2, 1, 'COOPETARIVA ALIANZA ', '909090', 'direccion', '898989', 'ninguna', 0, '2012-08-04 03:17:21', 1, 'MILE-PC'),
(3, 1, 'COOPETARIVA ALIANZA VIVIR', '909090', 'direccion', '898989', 'ninguna', 0, '2012-08-04 03:15:45', 1, 'MILE-PC'),
(4, 1, 'TEMPORALES', '998877', 'Calle 116 47 68', '6789432', 'Es una empresa de Textifilh', 0, '2012-08-04 03:16:25', 1, 'MILE-PC'),
(5, 0, 'COOPERATIVADE TRABAJO ASOCIADO GESTION ALIANZA', '900.069.893-2', 'CR 15 BIS  # 39 A -27', '6250247', '', 1, '2012-08-27 20:13:32', 1, '192.168.10.55'),
(6, 0, 'CONSTRUCTORA ALIANZA C.T.A. ', '830.507.699-6', 'CR 15 BIS  # 39 A -27', '6057272 EXT 115', '', 1, '2012-08-27 21:21:02', 1, '190.85.79.201'),
(7, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA VIVIR CTA', '900.116.755-6', 'CR 15 BIS  # 39 A -27', '6057272', '', 1, '2012-08-27 20:17:12', 1, '192.168.10.55'),
(8, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA SOCIAL  CTA', '900.047.273-1', 'CLL 3 SUR # 8-68', '4094841', '', 1, '2012-08-27 20:18:30', 1, '192.168.10.55'),
(9, 0, 'COOPERATIVA DE TRABAJO ASOCIADO ALIANZA ASOCIATIVA', '830.099.308-1', 'CR 15 BIS  # 39 A -27', '6057272', '', 1, '2012-08-27 20:19:43', 1, '192.168.10.55'),
(10, 0, 'ALIANZA ENLACE TEMPORAL S.A.S', '900.445.296-8', 'CLL 93 BIS # 19-29 OF 202', '', '', 1, '2012-08-27 20:21:16', 1, '192.168.10.55'),
(11, 0, 'ALIANZA TEMPORAL RECURSO HUMANO S.A.S', '900.513.360-3', 'CR 16 # 96-14', '', '', 1, '2012-08-27 20:22:25', 1, '192.168.10.55'),
(12, 0, 'FONDO DE EMPLEADOS GRUPO ALIANZA FONALIANZAS', '900.549.513-5', 'CLL 39 A # 14-94 IN 2 ', '6057272', '', 1, '2012-08-30 13:28:29', 1, '192.168.10.55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_sedes`
--

CREATE TABLE IF NOT EXISTS `alianza_sedes` (
  `axs_id` int(11) NOT NULL AUTO_INCREMENT,
  `axs_exa_id` int(11) NOT NULL,
  `axs_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `axs_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `axs_estado` int(1) NOT NULL DEFAULT '1',
  `axs_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `axs_usu_id` bigint(20) NOT NULL,
  `axs_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`axs_id`,`axs_exa_id`),
  KEY `axs_exa_id` (`axs_exa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Alianza' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `alianza_sedes`
--

INSERT INTO `alianza_sedes` (`axs_id`, `axs_exa_id`, `axs_nombre`, `axs_descripcion`, `axs_estado`, `axs_fechahora`, `axs_usu_id`, `axs_equipo`) VALUES
(1, 1, 'Sede Girardot', 'que es??', 1, '2012-07-27 02:06:57', 1, 'MILE-PC'),
(2, 1, 'sede galerias', '', 1, '2012-07-27 20:11:10', 1, 'MILE-PC'),
(3, 2, 'uno', '', 1, '2012-07-27 20:12:04', 1, 'MILE-PC'),
(4, 1, 'Sede norte', '', 1, '2012-07-27 20:17:59', 1, 'MILE-PC'),
(5, 1, 'Sede nororiente', '', 1, '2012-07-27 20:19:57', 1, 'MILE-PC'),
(6, 2, 'DOS', 'CARTA', 1, '2012-07-27 20:20:26', 1, 'MILE-PC'),
(7, 6, 'BOGOTA - TEUSAQUILLO', '', 1, '2012-09-24 10:44:02', 1, '190.85.79.201'),
(8, 10, 'CENTRAL', '', 1, '2012-12-10 20:21:23', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `car_dxe_id` int(11) NOT NULL,
  `car_revisa_id` int(11) NOT NULL,
  `car_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `car_prioridad` int(11) NOT NULL,
  `car_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `car_estado` int(1) NOT NULL DEFAULT '1',
  `car_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `car_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`car_id`,`car_dxe_id`),
  KEY `fk_depempresa` (`car_dxe_id`),
  KEY `car_revisa_id` (`car_revisa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Cargos en el departamento de la empresa' AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`car_id`, `car_equipo`, `car_dxe_id`, `car_revisa_id`, `car_nombre`, `car_prioridad`, `car_descripcion`, `car_estado`, `car_fechahora`, `car_usu_id`) VALUES
(1, '', 1, 1, 'GERENTE GENERAL', 0, 'SIN LIDER', 1, '2012-09-01 23:29:04', 1),
(2, 'mile-PC', 1, 1, 'GERENTE ADMINISTRATIVA', 0, '', 1, '2012-08-15 22:38:34', 1),
(3, 'mile-PC', 1, 1, 'COORDINADOR ADMINISTRATIVO', 1, '', 1, '2012-08-15 22:56:05', 1),
(4, 'mile-PC', 1, 1, 'COORDNADOR COMERCIAL', 0, 'N/A', 1, '2012-08-15 23:38:10', 1),
(5, 'mile-PC', 2, 1, 'JEFE CONTABILIDAD', 0, '', 1, '2012-08-15 23:39:09', 1),
(6, 'mile-PC', 2, 5, 'ANALISTA CONTABLE', 0, '', 1, '2012-08-15 23:39:56', 1),
(7, '190.85.79.201', 3, 4, 'GESTOR DE RECURSO HUMANO', 0, '', 1, '2012-08-24 14:38:03', 1),
(8, '127.0.0.1', 2, 5, 'CONTADOR', 5, 'KOK', 1, '2013-03-11 03:00:43', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE IF NOT EXISTS `ciudad` (
  `ciu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ciu_dep_id` int(11) unsigned NOT NULL,
  `ciu_nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ciu_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `ciu_estado` int(1) NOT NULL DEFAULT '1',
  `ciu_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ciu_usu_id` bigint(20) NOT NULL,
  `ciu_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ciu_id`),
  KEY `ciu_dep_id` (`ciu_dep_id`),
  KEY `ciu_nombre` (`ciu_nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1120 ;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`ciu_id`, `ciu_dep_id`, `ciu_nombre`, `ciu_obs`, `ciu_estado`, `ciu_fechahora`, `ciu_usu_id`, `ciu_equipo`) VALUES
(1, 1, 'Amazonas', '', 1, '2012-07-03 06:09:47', 1, 'MILE-PC'),
(2, 1, 'La chorrera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(3, 1, 'La pedrera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(4, 1, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(5, 1, 'Leticia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(6, 1, 'Miriti - parana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(7, 1, 'Puerto alegria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(8, 1, 'Puerto arica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(9, 1, 'Puerto nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(10, 1, 'Puerto santander ', '', 1, '0000-00-00 00:00:00', 0, ''),
(11, 1, 'Tarapaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(12, 2, 'Abejorral ', '', 1, '0000-00-00 00:00:00', 0, ''),
(13, 2, 'Abriaqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(14, 2, 'Alejandria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(15, 2, 'Amaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(16, 2, 'Amalfi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(17, 2, 'Andes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(18, 2, 'Angelopolis ', '', 1, '0000-00-00 00:00:00', 0, ''),
(19, 2, 'Angostura ', '', 1, '0000-00-00 00:00:00', 0, ''),
(20, 2, 'Anori ', '', 1, '0000-00-00 00:00:00', 0, ''),
(21, 2, 'Anza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(22, 2, 'Apartado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(23, 2, 'Arboletes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(24, 2, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(25, 2, 'Armenia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(26, 2, 'Barbosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(27, 2, 'Bello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(28, 2, 'Belmira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(29, 2, 'Betania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(30, 2, 'Betulia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(31, 2, 'BRICEÃ‘O', '', 1, '2012-08-24 02:21:50', 1, ''),
(33, 2, 'Caceres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(34, 2, 'Caicedo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(36, 2, 'Campamento ', '', 1, '0000-00-00 00:00:00', 0, ''),
(37, 2, 'Ca&ntilde;asgordas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(38, 2, 'Caracoli ', '', 1, '0000-00-00 00:00:00', 0, ''),
(39, 2, 'Caramanta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(40, 2, 'Carepa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(41, 2, 'Carolina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(42, 2, 'Caucasia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(43, 2, 'Chigorodo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(44, 2, 'Cisneros ', '', 1, '0000-00-00 00:00:00', 0, ''),
(45, 2, 'Ciudad bolivar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(46, 2, 'Cocorna ', '', 1, '0000-00-00 00:00:00', 0, ''),
(47, 2, 'Concepcion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(48, 2, 'Concordia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(49, 2, 'Copacabana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(50, 2, 'Dabeiba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(51, 2, 'Don matias ', '', 1, '0000-00-00 00:00:00', 0, ''),
(52, 2, 'Ebejico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(53, 2, 'El bagre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(54, 2, 'El carmen de viboral ', '', 1, '0000-00-00 00:00:00', 0, ''),
(55, 2, 'El santuario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(56, 2, 'Entrerrios ', '', 1, '0000-00-00 00:00:00', 0, ''),
(57, 2, 'Envigado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(58, 2, 'Fredonia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(59, 2, 'Frontino ', '', 1, '0000-00-00 00:00:00', 0, ''),
(60, 2, 'Giraldo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(61, 2, 'Girardota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(62, 2, 'Gomez plata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(63, 2, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(64, 2, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(65, 2, 'Guarne ', '', 1, '0000-00-00 00:00:00', 0, ''),
(66, 2, 'Guatape ', '', 1, '0000-00-00 00:00:00', 0, ''),
(67, 2, 'Heliconia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(68, 2, 'Hispania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(69, 2, 'Itagui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(70, 2, 'Ituango ', '', 1, '0000-00-00 00:00:00', 0, ''),
(71, 2, 'Jardin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(72, 2, 'Jerico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(73, 2, 'La ceja ', '', 1, '0000-00-00 00:00:00', 0, ''),
(74, 2, 'La estrella ', '', 1, '0000-00-00 00:00:00', 0, ''),
(75, 2, 'La pintada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(76, 2, 'La union ', '', 1, '0000-00-00 00:00:00', 0, ''),
(77, 2, 'Liborina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(78, 2, 'Maceo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(79, 2, 'Marinilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(80, 2, 'Medellin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(81, 2, 'Montebello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(82, 2, 'Murindo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(83, 2, 'Mutata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(84, 2, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(85, 2, 'Nechi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(86, 2, 'Necocli ', '', 1, '0000-00-00 00:00:00', 0, ''),
(87, 2, 'Olaya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(88, 2, 'Pe&ntilde;ol ', '', 1, '0000-00-00 00:00:00', 0, ''),
(89, 2, 'Peque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(90, 2, 'Pueblorrico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(91, 2, 'Puerto berrio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(92, 2, 'Puerto nare ', '', 1, '0000-00-00 00:00:00', 0, ''),
(93, 2, 'Puerto triunfo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(94, 2, 'Remedios ', '', 1, '0000-00-00 00:00:00', 0, ''),
(95, 2, 'Retiro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(96, 2, 'Rionegro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(97, 2, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(98, 2, 'Sabaneta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(99, 2, 'Salgar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(100, 2, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(101, 2, 'San carlos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(102, 2, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(103, 2, 'San jeronimo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(104, 2, 'San jose de la monta&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, ''),
(105, 2, 'San juan de uraba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(106, 2, 'San luis ', '', 1, '0000-00-00 00:00:00', 0, ''),
(107, 2, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(108, 2, 'San pedro de uraba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(109, 2, 'San rafael ', '', 1, '0000-00-00 00:00:00', 0, ''),
(110, 2, 'San roque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(111, 2, 'San vicente ', '', 1, '0000-00-00 00:00:00', 0, ''),
(112, 2, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(113, 2, 'Santa rosa de osos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(114, 2, 'Santafe de antioquia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(115, 2, 'Santo domingo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(116, 2, 'Segovia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(117, 2, 'Sonson ', '', 1, '0000-00-00 00:00:00', 0, ''),
(118, 2, 'Sopetran ', '', 1, '0000-00-00 00:00:00', 0, ''),
(119, 2, 'Tamesis ', '', 1, '0000-00-00 00:00:00', 0, ''),
(120, 2, 'Taraza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(121, 2, 'Tarso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(122, 2, 'Titiribi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(123, 2, 'Toledo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(124, 2, 'Turbo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(125, 2, 'Uramita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(126, 2, 'Urrao ', '', 1, '0000-00-00 00:00:00', 0, ''),
(127, 2, 'Valdivia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(128, 2, 'Valparaiso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(129, 2, 'Vegachi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(130, 2, 'Venecia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(131, 2, 'Vigia del fuerte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(132, 2, 'Yali ', '', 1, '0000-00-00 00:00:00', 0, ''),
(133, 2, 'Yarumal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(134, 2, 'Yolombo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(135, 2, 'Yondo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(136, 2, 'Zaragoza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(137, 3, 'Arauca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(138, 3, 'Arauquita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(139, 3, 'Cravo norte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(140, 3, 'Fortul ', '', 1, '0000-00-00 00:00:00', 0, ''),
(141, 3, 'Puerto rondon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(142, 3, 'Saravena ', '', 1, '0000-00-00 00:00:00', 0, ''),
(143, 3, 'Tame ', '', 1, '0000-00-00 00:00:00', 0, ''),
(144, 4, 'Providencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(145, 4, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(146, 5, 'Baranoa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(147, 5, 'Barranquilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(148, 5, 'Campo de la cruz ', '', 1, '0000-00-00 00:00:00', 0, ''),
(149, 5, 'Candelaria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(150, 5, 'Galapa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(151, 5, 'Juan de acosta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(152, 5, 'Luruaco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(153, 5, 'Malambo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(154, 5, 'Manati ', '', 1, '0000-00-00 00:00:00', 0, ''),
(155, 5, 'Palmar de varela ', '', 1, '0000-00-00 00:00:00', 0, ''),
(156, 5, 'Piojo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(157, 5, 'Polonuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(158, 5, 'Ponedera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(159, 5, 'Puerto colombia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(160, 5, 'Repelon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(161, 5, 'Sabanagrande ', '', 1, '0000-00-00 00:00:00', 0, ''),
(162, 5, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(163, 5, 'Santa lucia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(164, 5, 'Santo tomas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(165, 5, 'Soledad ', '', 1, '0000-00-00 00:00:00', 0, ''),
(166, 5, 'Suan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(167, 5, 'Tubara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(168, 5, 'Usiacuri ', '', 1, '0000-00-00 00:00:00', 0, ''),
(169, 6, 'Bogota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(170, 7, 'Achi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(171, 7, 'Altos del rosario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(172, 7, 'Arenal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(173, 7, 'Arjona ', '', 1, '0000-00-00 00:00:00', 0, ''),
(174, 7, 'Arroyohondo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(175, 7, 'Barranco de loba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(176, 7, 'Calamar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(177, 7, 'Cantagallo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(178, 7, 'Cartagena ', '', 1, '0000-00-00 00:00:00', 0, ''),
(179, 7, 'Cicuco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(180, 7, 'Clemencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(181, 7, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(182, 7, 'El carmen de bolivar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(183, 7, 'El guamo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(184, 7, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, ''),
(185, 7, 'Hatillo de loba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(186, 7, 'Magangue ', '', 1, '0000-00-00 00:00:00', 0, ''),
(187, 7, 'Mahates ', '', 1, '0000-00-00 00:00:00', 0, ''),
(188, 7, 'Margarita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(189, 7, 'Maria la baja ', '', 1, '0000-00-00 00:00:00', 0, ''),
(190, 7, 'Mompos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(191, 7, 'Montecristo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(192, 7, 'Morales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(193, 7, 'Pinillos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(194, 7, 'Regidor ', '', 1, '0000-00-00 00:00:00', 0, ''),
(195, 7, 'Rio viejo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(196, 7, 'San cristobal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(197, 7, 'San estanislao ', '', 1, '0000-00-00 00:00:00', 0, ''),
(198, 7, 'San fernando ', '', 1, '0000-00-00 00:00:00', 0, ''),
(199, 7, 'San jacinto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(200, 7, 'San jacinto del cauca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(201, 7, 'San juan nepomuceno ', '', 1, '0000-00-00 00:00:00', 0, ''),
(202, 7, 'San martin de loba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(203, 7, 'San pablo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(204, 7, 'Santa catalina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(205, 7, 'Santa rosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(206, 7, 'Santa rosa del sur ', '', 1, '0000-00-00 00:00:00', 0, ''),
(207, 7, 'Simiti ', '', 1, '0000-00-00 00:00:00', 0, ''),
(208, 7, 'Soplaviento ', '', 1, '0000-00-00 00:00:00', 0, ''),
(209, 7, 'Talaigua nuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(210, 7, 'Tiquisio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(211, 7, 'Turbaco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(212, 7, 'Turbana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(213, 7, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(214, 7, 'Zambrano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(215, 8, 'Almeida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(216, 8, 'Aquitania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(217, 8, 'Arcabuco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(218, 8, 'Belen ', '', 1, '0000-00-00 00:00:00', 0, ''),
(219, 8, 'Berbeo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(220, 8, 'Beteitiva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(221, 8, 'Boavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(222, 8, 'Boyaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(223, 8, 'Brice&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(224, 8, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, ''),
(225, 8, 'Busbanza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(226, 8, 'Caldas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(227, 8, 'Campohermoso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(228, 8, 'Cerinza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(229, 8, 'Chinavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(230, 8, 'Chiquinquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(231, 8, 'Chiquiza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(232, 8, 'Chiscas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(233, 8, 'Chita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(234, 8, 'Chitaraque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(235, 8, 'Chivata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(236, 8, 'Chivor ', '', 1, '0000-00-00 00:00:00', 0, ''),
(237, 8, 'Cienega ', '', 1, '0000-00-00 00:00:00', 0, ''),
(238, 8, 'Combita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(239, 8, 'Coper ', '', 1, '0000-00-00 00:00:00', 0, ''),
(240, 8, 'Corrales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(241, 8, 'Covarachia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(242, 8, 'Cubara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(243, 8, 'Cucaita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(244, 8, 'Cuitiva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(245, 8, 'Duitama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(246, 8, 'El cocuy ', '', 1, '0000-00-00 00:00:00', 0, ''),
(247, 8, 'El espino ', '', 1, '0000-00-00 00:00:00', 0, ''),
(248, 8, 'Firavitoba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(249, 8, 'Floresta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(250, 8, 'Gachantiva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(251, 8, 'Gameza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(252, 8, 'Garagoa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(253, 8, 'Guacamayas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(254, 8, 'Guateque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(255, 8, 'Guayata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(256, 8, 'Güican ', '', 1, '0000-00-00 00:00:00', 0, ''),
(257, 8, 'Iza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(258, 8, 'Jenesano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(259, 8, 'Jerico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(260, 8, 'La capilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(261, 8, 'La uvita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(262, 8, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(263, 8, 'Labranzagrande ', '', 1, '0000-00-00 00:00:00', 0, ''),
(264, 8, 'Macanal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(265, 8, 'Maripi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(266, 8, 'Miraflores ', '', 1, '0000-00-00 00:00:00', 0, ''),
(267, 8, 'Mongua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(268, 8, 'Mongui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(269, 8, 'Moniquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(270, 8, 'Motavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(271, 8, 'Muzo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(272, 8, 'Nobsa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(273, 8, 'Nuevo colon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(274, 8, 'Oicata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(275, 8, 'Otanche ', '', 1, '0000-00-00 00:00:00', 0, ''),
(276, 8, 'Pachavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(277, 8, 'Paez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(278, 8, 'Paipa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(279, 8, 'Pajarito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(280, 8, 'Panqueba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(281, 8, 'Pauna ', '', 1, '0000-00-00 00:00:00', 0, ''),
(282, 8, 'Paya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(283, 8, 'Paz de rio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(284, 8, 'Pesca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(285, 8, 'Pisba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(286, 8, 'Puerto boyaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(287, 8, 'Quipama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(288, 8, 'Ramiriqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(289, 8, 'Raquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(290, 8, 'Rondon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(291, 8, 'Saboya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(292, 8, 'Sachica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(293, 8, 'Samaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(294, 8, 'San eduardo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(295, 8, 'San jose de pare ', '', 1, '0000-00-00 00:00:00', 0, ''),
(296, 8, 'San luis de gaceno ', '', 1, '0000-00-00 00:00:00', 0, ''),
(297, 8, 'San mateo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(298, 8, 'San miguel de sema ', '', 1, '0000-00-00 00:00:00', 0, ''),
(299, 8, 'San pablo de borbur ', '', 1, '0000-00-00 00:00:00', 0, ''),
(300, 8, 'Santa maria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(301, 8, 'Santa rosa de viterbo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(302, 8, 'Santa sofia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(303, 8, 'Santana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(304, 8, 'Sativanorte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(305, 8, 'Sativasur ', '', 1, '0000-00-00 00:00:00', 0, ''),
(306, 8, 'Siachoque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(307, 8, 'Soata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(308, 8, 'Socha ', '', 1, '0000-00-00 00:00:00', 0, ''),
(309, 8, 'Socota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(310, 8, 'Sogamoso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(311, 8, 'Somondoco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(312, 8, 'Sora ', '', 1, '0000-00-00 00:00:00', 0, ''),
(313, 8, 'Soraca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(314, 8, 'Sotaquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(315, 8, 'Susacon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(316, 8, 'Sutamarchan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(317, 8, 'Sutatenza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(318, 8, 'Tasco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(319, 8, 'Tenza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(320, 8, 'Tibana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(321, 8, 'Tibasosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(322, 8, 'Tinjaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(323, 8, 'Tipacoque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(324, 8, 'Toca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(325, 8, 'Togüi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(326, 8, 'Topaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(327, 8, 'Tota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(328, 8, 'Tunja ', '', 1, '0000-00-00 00:00:00', 0, ''),
(329, 8, 'Tunungua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(330, 8, 'Turmeque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(331, 8, 'Tuta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(332, 8, 'Tutaza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(333, 8, 'Umbita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(334, 8, 'Ventaquemada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(335, 8, 'Villa de leyva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(336, 8, 'Viracacha ', '', 1, '0000-00-00 00:00:00', 0, ''),
(337, 8, 'Zetaquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(338, 9, 'Aguadas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(339, 9, 'Anserma ', '', 1, '0000-00-00 00:00:00', 0, ''),
(340, 9, 'Aranzazu ', '', 1, '0000-00-00 00:00:00', 0, ''),
(341, 9, 'Belalcazar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(342, 9, 'Chinchina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(343, 9, 'Filadelfia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(344, 9, 'La dorada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(345, 9, 'La merced ', '', 1, '0000-00-00 00:00:00', 0, ''),
(346, 9, 'Manizales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(347, 9, 'Manzanares ', '', 1, '0000-00-00 00:00:00', 0, ''),
(348, 9, 'Marmato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(349, 9, 'Marquetalia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(350, 9, 'Marulanda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(351, 9, 'Neira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(352, 9, 'Norcasia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(353, 9, 'Pacora ', '', 1, '0000-00-00 00:00:00', 0, ''),
(354, 9, 'Palestina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(355, 9, 'Pensilvania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(356, 9, 'Riosucio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(357, 9, 'Risaralda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(358, 9, 'Salamina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(359, 9, 'Samana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(360, 9, 'San jose ', '', 1, '0000-00-00 00:00:00', 0, ''),
(361, 9, 'Supia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(362, 9, 'Victoria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(363, 9, 'Villamaria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(364, 9, 'Viterbo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(365, 10, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(366, 10, 'Belen de los andaquies ', '', 1, '0000-00-00 00:00:00', 0, ''),
(367, 10, 'Cartagena del chaira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(368, 10, 'Curillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(369, 10, 'El doncello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(370, 10, 'El paujil ', '', 1, '0000-00-00 00:00:00', 0, ''),
(371, 10, 'Florencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(372, 10, 'La monta&ntilde;ita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(373, 10, 'Milan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(374, 10, 'Morelia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(375, 10, 'Puerto rico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(376, 10, 'San jose del fragua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(377, 10, 'San vicente del caguan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(378, 10, 'Solano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(379, 10, 'Solita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(380, 10, 'Valparaiso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(381, 11, 'Aguazul ', '', 1, '0000-00-00 00:00:00', 0, ''),
(382, 11, 'Chameza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(383, 11, 'Hato corozal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(384, 11, 'La salina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(385, 11, 'Mani ', '', 1, '0000-00-00 00:00:00', 0, ''),
(386, 11, 'Monterrey ', '', 1, '0000-00-00 00:00:00', 0, ''),
(387, 11, 'Nunchia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(388, 11, 'Orocue ', '', 1, '0000-00-00 00:00:00', 0, ''),
(389, 11, 'Paz de ariporo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(390, 11, 'Pore ', '', 1, '0000-00-00 00:00:00', 0, ''),
(391, 11, 'Recetor ', '', 1, '0000-00-00 00:00:00', 0, ''),
(392, 11, 'Sabanalarga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(393, 11, 'Sacama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(394, 11, 'San luis de palenque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(395, 11, 'Tamara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(396, 11, 'Tauramena ', '', 1, '0000-00-00 00:00:00', 0, ''),
(397, 11, 'Trinidad ', '', 1, '0000-00-00 00:00:00', 0, ''),
(398, 11, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(399, 11, 'Yopal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(400, 12, 'Almaguer ', '', 1, '0000-00-00 00:00:00', 0, ''),
(401, 12, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(402, 12, 'Balboa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(403, 12, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(404, 12, 'Buenos aires ', '', 1, '0000-00-00 00:00:00', 0, ''),
(405, 12, 'Cajibio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(406, 12, 'Caldono ', '', 1, '0000-00-00 00:00:00', 0, ''),
(407, 12, 'Caloto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(408, 12, 'Corinto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(409, 12, 'El tambo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(410, 12, 'Florencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(411, 12, 'Guapi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(412, 12, 'Inza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(413, 12, 'Jambalo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(414, 12, 'La sierra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(415, 12, 'La vega ', '', 1, '0000-00-00 00:00:00', 0, ''),
(416, 12, 'Lopez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(417, 12, 'Mercaderes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(418, 12, 'Miranda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(419, 12, 'Morales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(420, 12, 'Padilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(421, 12, 'Paez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(422, 12, 'Patia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(423, 12, 'Piamonte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(424, 12, 'Piendamo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(425, 12, 'Popayan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(426, 12, 'Puerto tejada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(427, 12, 'Purace ', '', 1, '0000-00-00 00:00:00', 0, ''),
(428, 12, 'Rosas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(429, 12, 'San sebastian ', '', 1, '0000-00-00 00:00:00', 0, ''),
(430, 12, 'Santa rosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(431, 12, 'Santander de quilichao ', '', 1, '0000-00-00 00:00:00', 0, ''),
(432, 12, 'Silvia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(433, 12, 'Sotara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(434, 12, 'Suarez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(435, 12, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(436, 12, 'Timbio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(437, 12, 'Timbiqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(438, 12, 'Toribio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(439, 12, 'Totoro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(440, 12, 'Villa rica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(441, 13, 'Aguachica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(442, 13, 'Agustin codazzi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(443, 13, 'Astrea ', '', 1, '0000-00-00 00:00:00', 0, ''),
(444, 13, 'Becerril ', '', 1, '0000-00-00 00:00:00', 0, ''),
(445, 13, 'Bosconia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(446, 13, 'Chimichagua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(447, 13, 'Chiriguana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(448, 13, 'Curumani ', '', 1, '0000-00-00 00:00:00', 0, ''),
(449, 13, 'El copey ', '', 1, '0000-00-00 00:00:00', 0, ''),
(450, 13, 'El paso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(451, 13, 'Gamarra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(452, 13, 'Gonzalez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(453, 13, 'La gloria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(454, 13, 'La jagua de ibirico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(455, 13, 'La paz ', '', 1, '0000-00-00 00:00:00', 0, ''),
(456, 13, 'Manaure ', '', 1, '0000-00-00 00:00:00', 0, ''),
(457, 13, 'Pailitas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(458, 13, 'Pelaya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(459, 13, 'Pueblo bello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(460, 13, 'Rio de oro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(461, 13, 'San alberto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(462, 13, 'San diego ', '', 1, '0000-00-00 00:00:00', 0, ''),
(463, 13, 'San martin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(464, 13, 'Tamalameque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(465, 13, 'Valledupar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(466, 14, 'Acandi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(467, 14, 'Alto baudo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(468, 14, 'Atrato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(469, 14, 'Bagado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(470, 14, 'Bahia solano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(471, 14, 'Bajo baudo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(472, 14, 'Belen de bajira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(473, 14, 'Bojaya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(474, 14, 'Carmen del darien ', '', 1, '0000-00-00 00:00:00', 0, ''),
(475, 14, 'Certegui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(476, 14, 'Condoto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(477, 14, 'El canton del san pablo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(478, 14, 'El carmen de atrato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(479, 14, 'El litoral del san juan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(480, 14, 'Istmina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(481, 14, 'Jurado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(482, 14, 'Lloro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(483, 14, 'Medio atrato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(484, 14, 'Medio baudo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(485, 14, 'Medio san juan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(486, 14, 'Novita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(487, 14, 'Nuqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(488, 14, 'Quibdo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(489, 14, 'Rio iro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(490, 14, 'Rio quito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(491, 14, 'Riosucio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(492, 14, 'San jose del palmar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(493, 14, 'Sipi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(494, 14, 'Tado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(495, 14, 'Unguia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(496, 14, 'Union panamericana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(497, 15, 'Ayapel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(498, 15, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, ''),
(499, 15, 'Canalete ', '', 1, '0000-00-00 00:00:00', 0, ''),
(500, 15, 'Cerete ', '', 1, '0000-00-00 00:00:00', 0, ''),
(501, 15, 'Chima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(502, 15, 'Chinu ', '', 1, '0000-00-00 00:00:00', 0, ''),
(503, 15, 'Cienaga de oro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(504, 15, 'Cotorra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(505, 15, 'La apartada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(506, 15, 'Lorica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(507, 15, 'Los cordobas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(508, 15, 'Momil ', '', 1, '0000-00-00 00:00:00', 0, ''),
(509, 15, 'Mo&ntilde;itos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(510, 15, 'Montelibano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(511, 15, 'Monteria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(512, 15, 'Planeta rica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(513, 15, 'Pueblo nuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(514, 15, 'Puerto escondido ', '', 1, '0000-00-00 00:00:00', 0, ''),
(515, 15, 'Puerto libertador ', '', 1, '0000-00-00 00:00:00', 0, ''),
(516, 15, 'Purisima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(517, 15, 'Sahagun ', '', 1, '2012-07-11 00:35:51', 1, ''),
(518, 15, 'San andres sotavento ', '', 1, '0000-00-00 00:00:00', 0, ''),
(519, 15, 'San antero ', '', 1, '0000-00-00 00:00:00', 0, ''),
(520, 15, 'San bernardo del viento ', '', 1, '0000-00-00 00:00:00', 0, ''),
(521, 15, 'San carlos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(522, 15, 'San pelayo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(523, 15, 'Tierralta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(524, 15, 'Valencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(525, 16, 'Agua de Dioss', '', 1, '2012-07-11 00:22:27', 1, ''),
(526, 16, 'Alban ', '', 1, '0000-00-00 00:00:00', 0, ''),
(527, 16, 'Anapoima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(528, 16, 'Anolaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(529, 16, 'Apulo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(530, 16, 'Arbelaez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(531, 16, 'Beltran ', '', 1, '0000-00-00 00:00:00', 0, ''),
(532, 16, 'Bituima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(533, 16, 'Bojaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(534, 16, 'Cabrera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(535, 16, 'Cachipay ', '', 1, '0000-00-00 00:00:00', 0, ''),
(536, 16, 'Cajica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(537, 16, 'Caparrapi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(538, 16, 'Caqueza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(539, 16, 'Carmen de carupa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(540, 16, 'Chaguani ', '', 1, '0000-00-00 00:00:00', 0, ''),
(541, 16, 'Chia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(542, 16, 'Chipaque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(543, 16, 'Choachi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(544, 16, 'Choconta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(545, 16, 'Cogua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(546, 16, 'Cota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(547, 16, 'Cucunuba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(548, 16, 'El colegio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(549, 16, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, ''),
(550, 16, 'El rosal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(551, 16, 'Facatativa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(552, 16, 'Fomeque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(553, 16, 'Fosca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(554, 16, 'Funza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(555, 16, 'Fuquene ', '', 1, '0000-00-00 00:00:00', 0, ''),
(556, 16, 'Fusagasuga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(557, 16, 'Gachala ', '', 1, '0000-00-00 00:00:00', 0, ''),
(558, 16, 'Gachancipa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(559, 16, 'Gacheta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(560, 16, 'Gama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(561, 16, 'Girardot ', '', 1, '0000-00-00 00:00:00', 0, ''),
(562, 16, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(563, 16, 'Guacheta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(564, 16, 'Guaduas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(565, 16, 'Guasca ', '', 1, '2012-05-20 05:21:04', 1, ''),
(566, 16, 'Guataqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(567, 16, 'Guatavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(568, 16, 'Guayabal de siquima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(569, 16, 'Guayabetal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(570, 16, 'Gutierrez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(571, 16, 'Jerusalen ', '', 1, '0000-00-00 00:00:00', 0, ''),
(572, 16, 'Junin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(573, 16, 'La calera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(574, 16, 'La mesa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(575, 16, 'La palma ', '', 1, '0000-00-00 00:00:00', 0, ''),
(576, 16, 'La pe&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, ''),
(577, 16, 'La vega ', '', 1, '0000-00-00 00:00:00', 0, ''),
(578, 16, 'Lenguazaque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(579, 16, 'Macheta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(580, 16, 'Madrid ', '', 1, '0000-00-00 00:00:00', 0, ''),
(581, 16, 'Manta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(582, 16, 'Medinaa', '', 1, '2012-07-11 00:22:43', 1, ''),
(583, 16, 'Mosquera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(584, 16, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(585, 16, 'Nemocon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(586, 16, 'Nilo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(587, 16, 'Nimaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(588, 16, 'Nocaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(589, 16, 'Pacho ', '', 1, '0000-00-00 00:00:00', 0, ''),
(590, 16, 'Paime ', '', 1, '0000-00-00 00:00:00', 0, ''),
(591, 16, 'Pandi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(592, 16, 'Paratebueno ', '', 1, '0000-00-00 00:00:00', 0, ''),
(593, 16, 'Pasca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(594, 16, 'Puerto salgar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(595, 16, 'Puli ', '', 1, '0000-00-00 00:00:00', 0, ''),
(596, 16, 'Quebradanegra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(597, 16, 'Quetame ', '', 1, '0000-00-00 00:00:00', 0, ''),
(598, 16, 'Quipile ', '', 1, '0000-00-00 00:00:00', 0, ''),
(599, 16, 'Ricaurte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(600, 16, 'San antonio del tequendama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(601, 16, 'San bernardo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(602, 16, 'San cayetano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(603, 16, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(604, 16, 'San juan de rio seco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(605, 16, 'Sasaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(606, 16, 'Sesquile ', '', 1, '0000-00-00 00:00:00', 0, ''),
(607, 16, 'Sibate ', '', 1, '0000-00-00 00:00:00', 0, ''),
(608, 16, 'Silvania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(609, 16, 'Simijaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(610, 16, 'Soacha ', '', 1, '0000-00-00 00:00:00', 0, ''),
(611, 16, 'Sopo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(612, 16, 'Subachoque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(613, 16, 'Suesca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(614, 16, 'Supata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(615, 16, 'Susa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(616, 16, 'Sutatausa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(617, 16, 'Tabio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(618, 16, 'Tausa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(619, 16, 'Tena ', '', 1, '0000-00-00 00:00:00', 0, ''),
(620, 16, 'Tenjo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(621, 16, 'Tibacuy ', '', 1, '0000-00-00 00:00:00', 0, ''),
(622, 16, 'Tibirita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(623, 16, 'Tocaima ima', '', 1, '2012-07-10 23:59:42', 1, ''),
(624, 16, 'Tocancipa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(625, 16, 'Topaipi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(626, 16, 'Ubala ', '', 1, '0000-00-00 00:00:00', 0, ''),
(627, 16, 'Ubaque ', '', 1, '0000-00-00 00:00:00', 0, ''),
(628, 16, 'Une ', '', 1, '0000-00-00 00:00:00', 0, ''),
(629, 16, 'Útica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(630, 16, 'Venecia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(631, 16, 'Vergara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(632, 16, 'Viani ', '', 1, '0000-00-00 00:00:00', 0, ''),
(633, 16, 'Villa de san diego de ubate ', '', 1, '0000-00-00 00:00:00', 0, ''),
(634, 16, 'Villagomez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(635, 16, 'Villapinzon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(636, 16, 'Villeta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(637, 16, 'Viota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(638, 16, 'Yacopi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(639, 16, 'Zipacon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(640, 16, 'Zipaquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(641, 17, 'Barranco minas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(642, 17, 'Cacahual ', '', 1, '0000-00-00 00:00:00', 0, ''),
(643, 17, 'Inirida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(644, 17, 'La guadalupe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(645, 17, 'Mapiripana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(646, 17, 'Morichal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(647, 17, 'Pana pana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(648, 17, 'Puerto colombia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(649, 17, 'San felipe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(650, 18, 'Calamar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(651, 18, 'El retorno ', '', 1, '0000-00-00 00:00:00', 0, ''),
(652, 18, 'Miraflores ', '', 1, '0000-00-00 00:00:00', 0, ''),
(653, 18, 'San jose del guaviare ', '', 1, '0000-00-00 00:00:00', 0, ''),
(654, 19, 'Acevedo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(655, 19, 'Agrado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(656, 19, 'Aipe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(657, 19, 'Algeciras ', '', 1, '0000-00-00 00:00:00', 0, ''),
(658, 19, 'Altamira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(659, 19, 'Baraya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(660, 19, 'Campoalegre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(661, 19, 'Colombia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(662, 19, 'Elias ', '', 1, '0000-00-00 00:00:00', 0, ''),
(663, 19, 'Garzon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(664, 19, 'Gigante ', '', 1, '0000-00-00 00:00:00', 0, ''),
(665, 19, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(666, 19, 'Hobo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(667, 19, 'Iquira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(668, 19, 'Isnos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(669, 19, 'La argentina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(670, 19, 'La plata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(671, 19, 'Nataga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(672, 19, 'Neiva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(673, 19, 'Oporapa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(674, 19, 'Paicol ', '', 1, '0000-00-00 00:00:00', 0, ''),
(675, 19, 'Palermo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(676, 19, 'Palestina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(677, 19, 'Pital ', '', 1, '0000-00-00 00:00:00', 0, ''),
(678, 19, 'Pitalito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(679, 19, 'Rivera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(680, 19, 'Saladoblanco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(681, 19, 'San agustin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(682, 19, 'Santa maria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(683, 19, 'Suaza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(684, 19, 'Tarqui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(685, 19, 'Tello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(686, 19, 'Teruel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(687, 19, 'Tesalia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(688, 19, 'Timana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(689, 19, 'Villavieja ', '', 1, '0000-00-00 00:00:00', 0, ''),
(690, 19, 'Yaguara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(691, 20, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(692, 20, 'Barrancas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(693, 20, 'Dibulla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(694, 20, 'Distraccion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(695, 20, 'El molino ', '', 1, '0000-00-00 00:00:00', 0, ''),
(696, 20, 'Fonseca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(697, 20, 'Hatonuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(698, 20, 'La jagua del pilar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(699, 20, 'Maicao ', '', 1, '0000-00-00 00:00:00', 0, ''),
(700, 20, 'Manaure ', '', 1, '0000-00-00 00:00:00', 0, ''),
(701, 20, 'Riohacha ', '', 1, '0000-00-00 00:00:00', 0, ''),
(702, 20, 'San juan del cesar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(703, 20, 'Uribia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(704, 20, 'Urumita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(705, 20, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(706, 21, 'Algarrobo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(707, 21, 'Aracataca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(708, 21, 'Ariguani ', '', 1, '0000-00-00 00:00:00', 0, ''),
(709, 21, 'Cerro san antonio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(710, 21, 'Chibolo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(711, 21, 'Cienaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(712, 21, 'Concordia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(713, 21, 'El banco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(714, 21, 'El pi&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, ''),
(715, 21, 'El reten ', '', 1, '0000-00-00 00:00:00', 0, ''),
(716, 21, 'Fundacion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(717, 21, 'Guamal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(718, 21, 'Nueva granada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(719, 21, 'Pedraza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(720, 21, 'Piji&ntilde;o del carmen ', '', 1, '0000-00-00 00:00:00', 0, ''),
(721, 21, 'Pivijay ', '', 1, '0000-00-00 00:00:00', 0, ''),
(722, 21, 'Plato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(723, 21, 'Puebloviejo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(724, 21, 'Remolino ', '', 1, '0000-00-00 00:00:00', 0, ''),
(725, 21, 'Sabanas de san angel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(726, 21, 'Salamina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(727, 21, 'San sebastian de buenavista ', '', 1, '0000-00-00 00:00:00', 0, ''),
(728, 21, 'San zenon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(729, 21, 'Santa ana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(730, 21, 'Santa barbara de pinto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(731, 21, 'Santa marta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(732, 21, 'Sitionuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(733, 21, 'Tenerife ', '', 1, '0000-00-00 00:00:00', 0, ''),
(734, 21, 'Zapayan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(735, 21, 'Zona bananera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(736, 22, 'Acacias ', '', 1, '0000-00-00 00:00:00', 0, ''),
(737, 22, 'Barranca de upia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(738, 22, 'Cabuyaro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(739, 22, 'Castilla la nueva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(740, 22, 'Cubarral ', '', 1, '0000-00-00 00:00:00', 0, ''),
(741, 22, 'Cumaral ', '', 1, '0000-00-00 00:00:00', 0, ''),
(742, 22, 'El calvario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(743, 22, 'El castillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(744, 22, 'El dorado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(745, 22, 'Fuente de oro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(746, 22, 'Granada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(747, 22, 'Guamal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(748, 22, 'La macarena ', '', 1, '0000-00-00 00:00:00', 0, ''),
(749, 22, 'Lejanias ', '', 1, '0000-00-00 00:00:00', 0, ''),
(750, 22, 'Mapiripan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(751, 22, 'Mesetas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(752, 22, 'Puerto concordia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(753, 22, 'Puerto gaitan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(754, 22, 'Puerto lleras ', '', 1, '0000-00-00 00:00:00', 0, ''),
(755, 22, 'Puerto lopez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(756, 22, 'Puerto rico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(757, 22, 'Restrepo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(758, 22, 'San carlos de guaroa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(759, 22, 'San juan de arama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(760, 22, 'San juanito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(761, 22, 'San martin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(762, 22, 'Uribe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(763, 22, 'Villavicencio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(764, 22, 'Vistahermosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(765, 23, 'Alban ', '', 1, '0000-00-00 00:00:00', 0, ''),
(766, 23, 'Aldana ', '', 1, '0000-00-00 00:00:00', 0, ''),
(767, 23, 'Ancuya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(768, 23, 'Arboleda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(769, 23, 'Barbacoas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(770, 23, 'Belen ', '', 1, '0000-00-00 00:00:00', 0, ''),
(771, 23, 'Buesaco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(772, 23, 'Chachagüi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(773, 23, 'Colon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(774, 23, 'Consaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(775, 23, 'Contadero ', '', 1, '0000-00-00 00:00:00', 0, ''),
(776, 23, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(777, 23, 'Cuaspud ', '', 1, '0000-00-00 00:00:00', 0, ''),
(778, 23, 'Cumbal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(779, 23, 'Cumbitara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(780, 23, 'El charco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(781, 23, 'El pe&ntilde;ol ', '', 1, '0000-00-00 00:00:00', 0, ''),
(782, 23, 'El rosario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(783, 23, 'El tablon de gomez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(784, 23, 'El tambo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(785, 23, 'Francisco pizarro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(786, 23, 'Funes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(787, 23, 'Guachucal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(788, 23, 'Guaitarilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(789, 23, 'Gualmatan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(790, 23, 'Iles ', '', 1, '0000-00-00 00:00:00', 0, ''),
(791, 23, 'Imues ', '', 1, '0000-00-00 00:00:00', 0, ''),
(792, 23, 'Ipiales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(793, 23, 'La cruz ', '', 1, '0000-00-00 00:00:00', 0, ''),
(794, 23, 'La florida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(795, 23, 'La llanada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(796, 23, 'La tola ', '', 1, '0000-00-00 00:00:00', 0, ''),
(797, 23, 'La union ', '', 1, '0000-00-00 00:00:00', 0, ''),
(798, 23, 'Leiva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(799, 23, 'Linares ', '', 1, '0000-00-00 00:00:00', 0, ''),
(800, 23, 'Los andes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(801, 23, 'Magüi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(802, 23, 'Mallama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(803, 23, 'Mosquera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(804, 23, 'Nari&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(805, 23, 'Olaya herrera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(806, 23, 'Ospina ', '', 1, '0000-00-00 00:00:00', 0, ''),
(807, 23, 'Pasto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(808, 23, 'Policarpa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(809, 23, 'Potosi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(810, 23, 'Providencia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(811, 23, 'Puerres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(812, 23, 'Pupiales ', '', 1, '0000-00-00 00:00:00', 0, ''),
(813, 23, 'Ricaurte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(814, 23, 'Roberto payan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(815, 23, 'Samaniego ', '', 1, '0000-00-00 00:00:00', 0, ''),
(816, 23, 'San bernardo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(817, 23, 'San lorenzo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(818, 23, 'San pablo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(819, 23, 'San pedro de cartago ', '', 1, '0000-00-00 00:00:00', 0, ''),
(820, 23, 'Sandona ', '', 1, '0000-00-00 00:00:00', 0, ''),
(821, 23, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(822, 23, 'Santacruz ', '', 1, '0000-00-00 00:00:00', 0, ''),
(823, 23, 'Sapuyes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(824, 23, 'Taminango ', '', 1, '0000-00-00 00:00:00', 0, ''),
(825, 23, 'Tangua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(826, 23, 'Tumaco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(827, 23, 'Tuquerres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(828, 23, 'Yacuanquer ', '', 1, '0000-00-00 00:00:00', 0, ''),
(829, 24, 'Abrego ', '', 1, '0000-00-00 00:00:00', 0, ''),
(830, 24, 'Arboledas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(831, 24, 'Bochalema ', '', 1, '0000-00-00 00:00:00', 0, ''),
(832, 24, 'Bucarasica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(833, 24, 'Cachira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(834, 24, 'Cacota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(835, 24, 'Chinacota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(836, 24, 'Chitaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(837, 24, 'Convencion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(838, 24, 'Cucuta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(839, 24, 'Cucutilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(840, 24, 'Durania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(841, 24, 'El carmen ', '', 1, '0000-00-00 00:00:00', 0, '');
INSERT INTO `ciudad` (`ciu_id`, `ciu_dep_id`, `ciu_nombre`, `ciu_obs`, `ciu_estado`, `ciu_fechahora`, `ciu_usu_id`, `ciu_equipo`) VALUES
(842, 24, 'El tarra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(843, 24, 'El zulia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(844, 24, 'Gramalote ', '', 1, '0000-00-00 00:00:00', 0, ''),
(845, 24, 'Hacari ', '', 1, '0000-00-00 00:00:00', 0, ''),
(846, 24, 'Herran ', '', 1, '0000-00-00 00:00:00', 0, ''),
(847, 24, 'La esperanza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(848, 24, 'La playa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(849, 24, 'Labateca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(850, 24, 'Los patios ', '', 1, '0000-00-00 00:00:00', 0, ''),
(851, 24, 'Lourdes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(852, 24, 'Mutiscua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(853, 24, 'Oca&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, ''),
(854, 24, 'Pamplona ', '', 1, '0000-00-00 00:00:00', 0, ''),
(855, 24, 'Pamplonita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(856, 24, 'Puerto santander ', '', 1, '0000-00-00 00:00:00', 0, ''),
(857, 24, 'Ragonvalia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(858, 24, 'Salazar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(859, 24, 'San calixto ', '', 1, '0000-00-00 00:00:00', 0, ''),
(860, 24, 'San cayetano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(861, 24, 'Santiago ', '', 1, '0000-00-00 00:00:00', 0, ''),
(862, 24, 'Sardinata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(863, 24, 'Silos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(864, 24, 'Teorama ', '', 1, '0000-00-00 00:00:00', 0, ''),
(865, 24, 'Tibu ', '', 1, '0000-00-00 00:00:00', 0, ''),
(866, 24, 'Toledo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(867, 24, 'Villa caro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(868, 24, 'Villa del rosario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(869, 25, 'Colon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(870, 25, 'Leguizamo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(871, 25, 'Mocoa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(872, 25, 'Orito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(873, 25, 'Puerto asis ', '', 1, '0000-00-00 00:00:00', 0, ''),
(874, 25, 'Puerto caicedo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(875, 25, 'Puerto guzman ', '', 1, '0000-00-00 00:00:00', 0, ''),
(876, 25, 'San francisco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(877, 25, 'San miguel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(878, 25, 'Santiago ', '', 1, '0000-00-00 00:00:00', 0, ''),
(879, 25, 'Sibundoy ', '', 1, '0000-00-00 00:00:00', 0, ''),
(880, 25, 'Valle del guamuez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(881, 25, 'Villagarzon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(882, 26, 'Armenia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(883, 26, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, ''),
(884, 26, 'Calarca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(885, 26, 'Circasia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(886, 26, 'Cordoba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(887, 26, 'Filandia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(888, 26, 'Genova ', '', 1, '0000-00-00 00:00:00', 0, ''),
(889, 26, 'La tebaida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(890, 26, 'Montenegro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(891, 26, 'Pijao ', '', 1, '0000-00-00 00:00:00', 0, ''),
(892, 26, 'Quimbaya ', '', 1, '0000-00-00 00:00:00', 0, ''),
(893, 26, 'Salento ', '', 1, '0000-00-00 00:00:00', 0, ''),
(894, 27, 'Apia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(895, 27, 'Balboa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(896, 27, 'Belen de umbria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(897, 27, 'Dosquebradas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(898, 27, 'Guatica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(899, 27, 'La celia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(900, 27, 'La virginia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(901, 27, 'Marsella ', '', 1, '0000-00-00 00:00:00', 0, ''),
(902, 27, 'Mistrato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(903, 27, 'Pereira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(904, 27, 'Pueblo rico ', '', 1, '0000-00-00 00:00:00', 0, ''),
(905, 27, 'Quinchia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(906, 27, 'Santa rosa de cabal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(907, 27, 'Santuario ', '', 1, '0000-00-00 00:00:00', 0, ''),
(908, 28, 'Aguada ', '', 1, '0000-00-00 00:00:00', 0, ''),
(909, 28, 'Albania ', '', 1, '0000-00-00 00:00:00', 0, ''),
(910, 28, 'Aratoca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(911, 28, 'Barbosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(912, 28, 'Barichara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(913, 28, 'Barrancabermeja ', '', 1, '0000-00-00 00:00:00', 0, ''),
(914, 28, 'Betulia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(915, 28, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(916, 28, 'Bucaramanga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(917, 28, 'Cabrera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(918, 28, 'California ', '', 1, '0000-00-00 00:00:00', 0, ''),
(919, 28, 'Capitanejo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(920, 28, 'Carcasi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(921, 28, 'Cepita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(922, 28, 'Cerrito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(923, 28, 'Charala ', '', 1, '0000-00-00 00:00:00', 0, ''),
(924, 28, 'Charta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(925, 28, 'Chima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(926, 28, 'Chipata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(927, 28, 'Cimitarra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(928, 28, 'Concepcion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(929, 28, 'Confines ', '', 1, '0000-00-00 00:00:00', 0, ''),
(930, 28, 'Contratacion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(931, 28, 'Coromoro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(932, 28, 'Curiti ', '', 1, '0000-00-00 00:00:00', 0, ''),
(933, 28, 'El carmen de chucuri ', '', 1, '0000-00-00 00:00:00', 0, ''),
(934, 28, 'El guacamayo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(935, 28, 'El pe&ntilde;on ', '', 1, '0000-00-00 00:00:00', 0, ''),
(936, 28, 'El playon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(937, 28, 'Encino ', '', 1, '0000-00-00 00:00:00', 0, ''),
(938, 28, 'Enciso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(939, 28, 'Florian ', '', 1, '0000-00-00 00:00:00', 0, ''),
(940, 28, 'Floridablanca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(941, 28, 'Galan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(942, 28, 'Gambita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(943, 28, 'Giron ', '', 1, '0000-00-00 00:00:00', 0, ''),
(944, 28, 'Guaca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(945, 28, 'Guadalupe ', '', 1, '0000-00-00 00:00:00', 0, ''),
(946, 28, 'Guapota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(947, 28, 'Guavata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(948, 28, 'Güepsa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(949, 28, 'Hato ', '', 1, '0000-00-00 00:00:00', 0, ''),
(950, 28, 'Jesus maria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(951, 28, 'Jordan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(952, 28, 'La belleza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(953, 28, 'La paz ', '', 1, '0000-00-00 00:00:00', 0, ''),
(954, 28, 'Landazuri ', '', 1, '0000-00-00 00:00:00', 0, ''),
(955, 28, 'Lebrija ', '', 1, '0000-00-00 00:00:00', 0, ''),
(956, 28, 'Los santos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(957, 28, 'Macaravita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(958, 28, 'Malaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(959, 28, 'Matanza ', '', 1, '0000-00-00 00:00:00', 0, ''),
(960, 28, 'Mogotes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(961, 28, 'Molagavita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(962, 28, 'Ocamonte ', '', 1, '0000-00-00 00:00:00', 0, ''),
(963, 28, 'Oiba ', '', 1, '0000-00-00 00:00:00', 0, ''),
(964, 28, 'Onzaga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(965, 28, 'Palmar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(966, 28, 'Palmas del socorro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(967, 28, 'Paramo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(968, 28, 'Piedecuesta ', '', 1, '0000-00-00 00:00:00', 0, ''),
(969, 28, 'Pinchote ', '', 1, '0000-00-00 00:00:00', 0, ''),
(970, 28, 'Puente nacional ', '', 1, '0000-00-00 00:00:00', 0, ''),
(971, 28, 'Puerto parra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(972, 28, 'Puerto wilches ', '', 1, '0000-00-00 00:00:00', 0, ''),
(973, 28, 'Rionegro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(974, 28, 'Sabana de torres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(975, 28, 'San andres ', '', 1, '0000-00-00 00:00:00', 0, ''),
(976, 28, 'San benito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(977, 28, 'San gil ', '', 1, '0000-00-00 00:00:00', 0, ''),
(978, 28, 'San joaquin ', '', 1, '0000-00-00 00:00:00', 0, ''),
(979, 28, 'San jose de miranda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(980, 28, 'San miguel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(981, 28, 'San vicente de chucuri ', '', 1, '0000-00-00 00:00:00', 0, ''),
(982, 28, 'Santa barbara ', '', 1, '0000-00-00 00:00:00', 0, ''),
(983, 28, 'Santa helena del opon ', '', 1, '0000-00-00 00:00:00', 0, ''),
(984, 28, 'Simacota ', '', 1, '0000-00-00 00:00:00', 0, ''),
(985, 28, 'Socorro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(986, 28, 'Suaita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(987, 28, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(988, 28, 'Surata ', '', 1, '0000-00-00 00:00:00', 0, ''),
(989, 28, 'Tona ', '', 1, '0000-00-00 00:00:00', 0, ''),
(990, 28, 'Valle de san jose ', '', 1, '0000-00-00 00:00:00', 0, ''),
(991, 28, 'Velez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(992, 28, 'Vetas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(993, 28, 'Villanueva ', '', 1, '0000-00-00 00:00:00', 0, ''),
(994, 28, 'Zapatoca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(995, 29, 'Buenavista ', '', 1, '0000-00-00 00:00:00', 0, ''),
(996, 29, 'Caimito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(997, 29, 'Chalan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(998, 29, 'Coloso ', '', 1, '0000-00-00 00:00:00', 0, ''),
(999, 29, 'Corozal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1000, 29, 'Cove&ntilde;as ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1001, 29, 'El roble ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1002, 29, 'Galeras ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1003, 29, 'Guaranda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1004, 29, 'La union ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1005, 29, 'Los palmitos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1006, 29, 'Majagual ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1007, 29, 'Morroa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1008, 29, 'Ovejas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1009, 29, 'Palmito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1010, 29, 'Sampues ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1011, 29, 'San benito abad ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1012, 29, 'San juan de betulia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1013, 29, 'San marcos ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1014, 29, 'San onofre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1015, 29, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1016, 29, 'Santiago de tolu ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1017, 29, 'Since ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1018, 29, 'Sincelejo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1019, 29, 'Sucre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1020, 29, 'Tolu viejo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1021, 30, 'Alpujarra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1022, 30, 'Alvarado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1023, 30, 'Ambalema ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1024, 30, 'Anzoategui ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1025, 30, 'Armero ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1026, 30, 'Ataco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1027, 30, 'Cajamarca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1028, 30, 'Carmen de apicala ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1029, 30, 'Casabianca ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1030, 30, 'Chaparral ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1031, 30, 'Coello ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1032, 30, 'Coyaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1033, 30, 'Cunday ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1034, 30, 'Dolores ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1035, 30, 'Espinal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1036, 30, 'Falan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1037, 30, 'Flandes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1038, 30, 'Fresno ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1039, 30, 'Guamo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1040, 30, 'Herveo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1041, 30, 'Honda ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1042, 30, 'Ibague ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1043, 30, 'Icononzo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1044, 30, 'Lerida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1045, 30, 'Libano ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1046, 30, 'Mariquita ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1047, 30, 'Melgar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1048, 30, 'Murillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1049, 30, 'Natagaima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1050, 30, 'Ortega ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1051, 30, 'Palocabildo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1052, 30, 'Piedras ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1053, 30, 'Planadas ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1054, 30, 'Prado ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1055, 30, 'Purificacion ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1056, 30, 'Rioblanco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1057, 30, 'Roncesvalles ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1058, 30, 'Rovira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1059, 30, 'Salda&ntilde;a ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1060, 30, 'San antonio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1061, 30, 'San luis ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1062, 30, 'Santa isabel ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1063, 30, 'Suarez ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1064, 30, 'Valle de san juan ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1065, 30, 'Venadillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1066, 30, 'Villahermosa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1067, 30, 'Villarrica ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1068, 31, 'Alcala ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1069, 31, 'Andalucia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1070, 31, 'Ansermanuevo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1071, 31, 'Argelia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1072, 31, 'Bolivar ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1073, 31, 'Buenaventura ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1074, 31, 'Bugalagrande ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1075, 31, 'Caicedonia ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1076, 31, 'Cali ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1077, 31, 'Calima ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1078, 31, 'Candelaria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1079, 31, 'Cartago ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1080, 31, 'Dagua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1081, 31, 'El aguila ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1082, 31, 'El cairo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1083, 31, 'El cerrito ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1084, 31, 'El dovio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1085, 31, 'Florida ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1086, 31, 'Ginebra ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1087, 31, 'Guacari ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1088, 31, 'Guadalajara de buga ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1089, 31, 'Jamundi ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1090, 31, 'La cumbre ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1091, 31, 'La union ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1092, 31, 'La victoria ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1093, 31, 'Obando ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1094, 31, 'Palmira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1095, 31, 'Pradera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1096, 31, 'Restrepo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1097, 31, 'Riofrio ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1098, 31, 'Roldanillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1099, 31, 'San pedro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1100, 31, 'Sevilla ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1101, 31, 'Toro ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1102, 31, 'Trujillo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1103, 31, 'Tulua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1104, 31, 'Ulloa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1105, 31, 'Versalles ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1106, 31, 'Vijes ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1107, 31, 'Yotoco ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1108, 31, 'Yumbo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1109, 31, 'Zarzal ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1110, 32, 'Caruru ', '', 1, '2012-07-11 00:24:19', 1, ''),
(1111, 32, 'Mitu ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1112, 32, 'Pacoa ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1113, 32, 'Papunaua ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1114, 32, 'Taraira ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1115, 32, 'Yavarate ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1116, 33, 'Cumaribo ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1117, 33, 'La primavera ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1118, 33, 'Puerto carre&ntilde;o ', '', 1, '0000-00-00 00:00:00', 0, ''),
(1119, 33, 'Santa rosalia ', '', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `dep_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dep_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `dep_nombre` varchar(65) CHARACTER SET latin1 DEFAULT NULL,
  `dep_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `dep_estado` int(1) NOT NULL DEFAULT '1',
  `dep_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dep_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`dep_id`, `dep_equipo`, `dep_nombre`, `dep_descripcion`, `dep_estado`, `dep_fechahora`, `dep_usu_id`) VALUES
(1, '127.0.0.1', 'Amazonas', 'El Amazonas es la regION selvAtica tropical mAs grande del planeta, con una extensiOn aproximada de 6.000.000 km2 repartidos en ocho paises de SuramErica: Brasil, Peru (estos dos paises los que mayor extension selvativa poseen), Colombia, Bolivia, Venezuela, Ecuador, Guyana y Guayana Francesa.', 1, '2012-08-24 01:48:21', 1),
(2, '127.0.0.1', 'Antioquia', 'estÃ¡ localizada en la zona noroccidental del paÃ­s y es la segunda divisiÃ³n polÃ­tico-administrativa en aglomeraciÃ³n de personas de la naciÃ³n. Su capital MedellÃ­n es a la vez la segunda ciudad en poblaciÃ³n y economÃ­a', 1, '2012-08-24 02:06:41', 1),
(3, '', 'Arauca', '', 1, '0000-00-00 00:00:00', 0),
(4, '', 'Archipielago de San Andres, Providencia', '', 1, '0000-00-00 00:00:00', 1),
(5, '', 'Atlantico', 'jiji', 1, '2012-05-04 02:19:38', 1),
(6, '', 'Bogota D.C', '', 1, '0000-00-00 00:00:00', 1),
(7, '', 'Bolivar', '', 1, '0000-00-00 00:00:00', 0),
(8, '', 'Boyaca', '', 1, '0000-00-00 00:00:00', 0),
(9, '', 'Caldas', '', 1, '0000-00-00 00:00:00', 0),
(10, '', 'Caqueta', '', 1, '0000-00-00 00:00:00', 0),
(11, '', 'Casanare', '', 1, '0000-00-00 00:00:00', 0),
(12, '', 'Cauca', '', 1, '0000-00-00 00:00:00', 0),
(13, '', 'Cesar', '', 1, '0000-00-00 00:00:00', 0),
(14, '', 'Choco', '', 1, '0000-00-00 00:00:00', 0),
(15, '', 'Cordoba', '', 1, '0000-00-00 00:00:00', 0),
(16, 'MILE-PC', 'Cundinamarca', 'vivi cundi', 1, '2012-07-11 00:25:17', 1),
(17, '', 'Guainia', '', 1, '0000-00-00 00:00:00', 0),
(18, '', 'Guaviare', '', 1, '0000-00-00 00:00:00', 0),
(19, '', 'Huila', '', 1, '0000-00-00 00:00:00', 0),
(20, '', 'La Guajira', '', 1, '0000-00-00 00:00:00', 0),
(21, '', 'Magdalena', '', 1, '0000-00-00 00:00:00', 0),
(22, '', 'Meta', '', 1, '0000-00-00 00:00:00', 0),
(23, '', 'Narino', '', 1, '0000-00-00 00:00:00', 1),
(24, '', 'Norte de Santander', '', 1, '0000-00-00 00:00:00', 0),
(25, '', 'Putumayo', '', 1, '0000-00-00 00:00:00', 0),
(26, '', 'Quindio', '', 1, '0000-00-00 00:00:00', 0),
(27, '', 'Risaralda', '', 1, '0000-00-00 00:00:00', 0),
(28, '', 'Santander', '', 1, '0000-00-00 00:00:00', 0),
(29, '', 'Sucre', '', 1, '0000-00-00 00:00:00', 0),
(30, 'MILE-PC', 'Tolimaa', '', 1, '2012-07-11 00:23:14', 1),
(31, '', 'Valle del Cauca', '', 1, '0000-00-00 00:00:00', 0),
(32, '', 'Vaupes', '', 1, '0000-00-00 00:00:00', 0),
(33, '', 'Vichada', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depxdepal`
--

CREATE TABLE IF NOT EXISTS `depxdepal` (
  `dxd_id` int(11) NOT NULL AUTO_INCREMENT,
  `dxd_dxe_id` int(11) NOT NULL COMMENT 'real',
  `dxd_axe_id` int(11) NOT NULL COMMENT 'recepcion',
  `dxd_estado` int(1) NOT NULL DEFAULT '1',
  `dxd_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dxd_usu_id` int(11) NOT NULL,
  `dxd_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`dxd_id`),
  KEY `dxd_dxe_id` (`dxd_dxe_id`),
  KEY `dxd_axe_id` (`dxd_axe_id`),
  KEY `dxd_usu_id` (`dxd_usu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Relaciona Deptos Grupo con Deptos Emp Alianza' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `depxdepal`
--

INSERT INTO `depxdepal` (`dxd_id`, `dxd_dxe_id`, `dxd_axe_id`, `dxd_estado`, `dxd_fechahora`, `dxd_usu_id`, `dxd_equipo`) VALUES
(1, 3, 4, 1, '2012-12-10 20:23:50', 1, '127.0.0.1'),
(2, 2, 3, 1, '2013-01-06 23:58:44', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dep_empresa`
--

CREATE TABLE IF NOT EXISTS `dep_empresa` (
  `dxe_id` int(11) NOT NULL AUTO_INCREMENT,
  `dxe_sede_id` int(11) NOT NULL,
  `dxe_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `dxe_descricion` text COLLATE utf8_spanish2_ci NOT NULL,
  `dxe_estado` int(1) NOT NULL DEFAULT '1',
  `dxe_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dxe_usu_id` bigint(20) NOT NULL,
  `dxe_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`dxe_id`,`dxe_sede_id`),
  KEY `dxe_sede_id` (`dxe_sede_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Departamentos de la Empresa' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `dep_empresa`
--

INSERT INTO `dep_empresa` (`dxe_id`, `dxe_sede_id`, `dxe_nombre`, `dxe_descricion`, `dxe_estado`, `dxe_fechahora`, `dxe_usu_id`, `dxe_equipo`) VALUES
(1, 1, 'DIRECTIVOS', '', 1, '2012-08-15 22:27:38', 1, 'mile-PC'),
(2, 1, 'CONTABILIDAD', '', 1, '2012-08-15 22:27:54', 1, 'mile-PC'),
(3, 1, 'GESTION DE RECURSO HUMANO', 'SCD', 1, '2012-08-24 14:35:47', 1, '190.85.79.201');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE IF NOT EXISTS `documento` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_usu_id` bigint(20) NOT NULL,
  `doc_tra_id` int(11) NOT NULL,
  `doc_ciu_id` int(11) unsigned NOT NULL,
  `doc_txd_id` int(11) NOT NULL,
  `doc_txe_id` int(11) NOT NULL COMMENT 'Tipo Empresa Cliente',
  `doc_exc_id` int(11) NOT NULL COMMENT 'Empresa Cliente',
  `doc_axe_id` int(11) NOT NULL COMMENT 'Departamento Empresas Propias',
  `doc_usudestinoid` int(11) NOT NULL,
  `doc_usudestino` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `doc_fecrecibo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `doc_fecdoc` date NOT NULL,
  `doc_asunto` text COLLATE utf8_spanish2_ci NOT NULL,
  `doc_entremitente` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `doc_remitente` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `doc_obsdocmento` text COLLATE utf8_spanish2_ci NOT NULL,
  `doc_estado` int(1) NOT NULL DEFAULT '1',
  `doc_anexos` text COLLATE utf8_spanish2_ci NOT NULL,
  `doc_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`doc_id`),
  KEY `doc_tra_id` (`doc_tra_id`),
  KEY `doc_txd_id` (`doc_txd_id`),
  KEY `doc_ciu_id` (`doc_ciu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos del tramite' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`doc_id`, `doc_usu_id`, `doc_tra_id`, `doc_ciu_id`, `doc_txd_id`, `doc_txe_id`, `doc_exc_id`, `doc_axe_id`, `doc_usudestinoid`, `doc_usudestino`, `doc_fecrecibo`, `doc_fecdoc`, `doc_asunto`, `doc_entremitente`, `doc_remitente`, `doc_obsdocmento`, `doc_estado`, `doc_anexos`, `doc_equipo`) VALUES
(1, 0, 1, 145, 1, 1, 2, 3, 10, '', '2013-03-09 23:23:17', '2013-03-05', 'HHH', '', '', 'HHHHHHHHHHHH para ti', 1, 'CORRER', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `emp_nit` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `emp_direccion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `emp_telefono` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `emp_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `emp_estado` int(1) NOT NULL DEFAULT '1',
  `emp_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emp_usu_id` bigint(20) NOT NULL,
  `emp_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas base' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`emp_id`, `emp_nombre`, `emp_nit`, `emp_direccion`, `emp_telefono`, `emp_obs`, `emp_estado`, `emp_fechahora`, `emp_usu_id`, `emp_equipo`) VALUES
(1, 'Grupo Alianza', '88995511', 'cra 15 39 39bis', '7878787', '', 1, '2012-08-09 03:15:48', 1, 'MILE-PC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresascliente_grupo`
--

CREATE TABLE IF NOT EXISTS `empresascliente_grupo` (
  `exg_id` int(11) NOT NULL AUTO_INCREMENT,
  `exg_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `exg_estado` int(1) NOT NULL DEFAULT '1',
  `exg_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exg_usu_id` int(11) NOT NULL,
  `exg_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`exg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `empresascliente_grupo`
--

INSERT INTO `empresascliente_grupo` (`exg_id`, `exg_nombre`, `exg_estado`, `exg_fechahora`, `exg_usu_id`, `exg_equipo`) VALUES
(1, 'no agrupada (individual)', 1, '2012-08-27 20:02:45', 1, '190.85.79.201'),
(2, 'GRUPO INNOVA ', 1, '2012-08-27 20:07:35', 1, '190.85.79.201'),
(3, 'GRUPO GUERFOR ok', 1, '2012-09-24 10:35:59', 1, '190.85.79.201'),
(4, 'MEJORANDOLA', 1, '2013-01-04 01:00:47', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas_grupo`
--

CREATE TABLE IF NOT EXISTS `empresas_grupo` (
  `gru_id` int(11) NOT NULL AUTO_INCREMENT,
  `gru_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `gru_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `gru_estado` int(1) NOT NULL DEFAULT '1',
  `gru_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gru_usu_id` bigint(20) NOT NULL,
  `gru_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`gru_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tamaño empresas' AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `empresas_grupo`
--

INSERT INTO `empresas_grupo` (`gru_id`, `gru_nombre`, `gru_obs`, `gru_estado`, `gru_fechahora`, `gru_usu_id`, `gru_equipo`) VALUES
(1, 'V.I.P.', 'VIP son siglas que en inglés significan Very Important Person (Persona Muy Importante)', 0, '2012-07-11 22:23:05', 1, 'MILE-PC'),
(2, 'de 51 a 100 trabajadores', '', 0, '2012-09-24 10:21:06', 1, '190.85.79.201'),
(3, 'DE 201 a 300 TRABAJADORES', '', 0, '2012-09-24 10:23:39', 1, '190.85.79.201'),
(4, 'menos de 20 TRABAJADORES', '', 0, '2012-09-24 10:22:10', 1, '190.85.79.201'),
(5, 'DE 21 A 50 TRABAJADORES', '', 0, '2012-09-24 10:20:20', 1, '190.85.79.201'),
(6, 'DE 101 A 200 TRABAJADORES', '', 0, '2012-09-24 10:22:53', 1, '190.85.79.201'),
(7, 'centro de atencion teusaquillo', '', 1, '2012-09-24 10:38:10', 1, '190.85.79.201');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas_tipo`
--

CREATE TABLE IF NOT EXISTS `empresas_tipo` (
  `ext_id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_nombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ext_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `ext_usu_id` int(11) NOT NULL,
  `ext_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ext_ip` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ext_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tipo Tipo Empresas' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `empresas_tipo`
--

INSERT INTO `empresas_tipo` (`ext_id`, `ext_nombre`, `ext_obs`, `ext_usu_id`, `ext_fechahora`, `ext_equipo`, `ext_ip`, `ext_estado`) VALUES
(1, 'Contratistas', 'Un contratista es la persona o empresa que es contratada por otra ORGANIZACIÃƒÂ“N particular para la CONSTRICCIÃƒÂ“N un edificio, carretera, INSTALACIÃƒÂ“N ALGÃƒÂšN trabajo especial, como REFINERÃƒÂA o plataformas petroleras.', 1, '2013-01-04 02:13:47', '127.0.0.1', '', 1),
(2, 'Proveedores ', 'Se aplica a la persona natural o empresa que se dedica a proveer o abastecer de productos o servicios necesarios a una persona o empresa', 1, '2012-09-24 10:28:12', '190.85.79.201', '', 1),
(3, 'Entidades Estatales', 'Son todas aquellas entidades que son propiedad del Estado, sea éste nacional, municipal o de cualquier otro estrato administrativo, ya sea de un modo total o parcial', 0, '2012-08-15 14:34:27', '', '', 1),
(4, 'CLIENTES', 'CLIENTE ES QUIEN ACCEDE A UN PRODUCTO O SERVICIO QUE OFRECE EL GRUPO ALIANZA POR MEDIO DE UNA TRANSACCIÃƒÂ“N FINANCIERA (DINERO) U OTRO MEDIO DE PAGO.', 1, '2013-01-04 20:00:42', '127.0.0.1', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_cliente`
--

CREATE TABLE IF NOT EXISTS `empresa_cliente` (
  `exc_id` int(11) NOT NULL AUTO_INCREMENT,
  `exc_exg_id` int(11) NOT NULL,
  `exc_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exc_usu_id` bigint(20) NOT NULL,
  `exc_ext_id` int(11) NOT NULL COMMENT 'empresa tipo',
  `exc_txe_id` int(11) NOT NULL COMMENT 'Tipo Empresa Cliente',
  `exc_nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `exc_nit` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `exc_direccion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `exc_fijo` int(11) NOT NULL,
  `exc_celular` int(11) NOT NULL,
  `exc_cargo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Cargo Contacto',
  `exc_contacto` varchar(150) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Responsable Empresa Cliente',
  `exc_mail` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `exc_res_id` bigint(20) NOT NULL COMMENT 'Usuario Responsable Alianza',
  `exc_estado` int(1) NOT NULL DEFAULT '1',
  `exc_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`exc_id`,`exc_txe_id`),
  KEY `fk_tipoempresacliente` (`exc_txe_id`),
  KEY `exc_exg_id` (`exc_exg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Empresas Cliente' AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `empresa_cliente`
--

INSERT INTO `empresa_cliente` (`exc_id`, `exc_exg_id`, `exc_fechahora`, `exc_usu_id`, `exc_ext_id`, `exc_txe_id`, `exc_nombre`, `exc_nit`, `exc_direccion`, `exc_fijo`, `exc_celular`, `exc_cargo`, `exc_contacto`, `exc_mail`, `exc_res_id`, `exc_estado`, `exc_equipo`) VALUES
(2, 4, '2013-01-04 02:04:58', 1, 4, 1, 'COLORTEX S.A.', '77778888', 'CALLE 146 56 78', 6789543, 2147483647, '', 'JUAN CARLOS CAMPOS', 'JCAMPOS@MAIL.COM', 1, 1, '127.0.0.1'),
(3, 4, '2013-01-04 02:18:45', 1, 1, 5, 'JEANTECH S.A.', '5555544444', 'CALLE 52 18 67', 2567843, 315678321, '', 'MARIA DEL SOCORRO MONTALVO', 'MARIAMONTALVO@MAIL.COM', 2, 1, '127.0.0.1'),
(4, 4, '2013-01-04 02:49:47', 1, 4, 2, 'EMPRESA3170 NUVO', '22222333333', 'DIR AZUL', 2722790, 2147483647, '', 'GUSTAVO BUSTOS', 'GRANOS@GMAIL.COM', 2, 1, '127.0.0.1'),
(5, 4, '2013-01-04 02:53:46', 1, 4, 2, 'GAMACOLOR LTDA', '777744444', 'CRA 11 14 14', 567456, 300678432, '', 'JORGE BUCAY', 'BUCAY@MAIL.COM', 7, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_sedes`
--

CREATE TABLE IF NOT EXISTS `empresa_sedes` (
  `sede_id` int(11) NOT NULL AUTO_INCREMENT,
  `sede_emp_id` int(11) NOT NULL,
  `sede_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `sede_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `sede_estado` int(1) NOT NULL DEFAULT '1',
  `sede_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sede_usu_id` bigint(20) NOT NULL,
  `sede_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`sede_id`,`sede_emp_id`),
  KEY `fk_empresabase` (`sede_emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Sedes de la Empresas Base' AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `empresa_sedes`
--

INSERT INTO `empresa_sedes` (`sede_id`, `sede_emp_id`, `sede_nombre`, `sede_descripcion`, `sede_estado`, `sede_fechahora`, `sede_usu_id`, `sede_equipo`) VALUES
(1, 1, 'SEDE TEUSAQUILLO', 'bARRIO TEUSAQUILLO', 1, '2012-08-15 22:26:32', 1, 'mile-PC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE IF NOT EXISTS `modulo` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `mod_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`mod_id`, `mod_nombre`, `mod_estado`) VALUES
(1, 'Configuración', 1),
(2, 'Gestión Trámites', 1),
(3, 'Gestión Usuarios', 1),
(4, 'Estadísticas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo_perfil`
--

CREATE TABLE IF NOT EXISTS `modulo_perfil` (
  `mxp_id` int(11) NOT NULL AUTO_INCREMENT,
  `mxp_mod_id` int(11) NOT NULL,
  `mxp_per_id` int(11) NOT NULL,
  `mxp_estado` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mxp_id`),
  KEY `fk_modulo` (`mxp_mod_id`),
  KEY `mxp_per_id` (`mxp_per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Modulos por perfil' AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `modulo_perfil`
--

INSERT INTO `modulo_perfil` (`mxp_id`, `mxp_mod_id`, `mxp_per_id`, `mxp_estado`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 2, 6, 1),
(6, 4, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `par_id` int(11) NOT NULL AUTO_INCREMENT,
  `par_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `par_texto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`par_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`par_id`, `par_nombre`, `par_texto`) VALUES
(1, 'pie_home', 'Derechos Reservados Centro de Soluciones 2012&copy;'),
(2, 'titulo_home', '||| SISTEMA CENTRAL DE TRAMITES Y SOLUCIONES |||'),
(3, 'mailadministrador', 'milenaamaya@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `per_id` int(11) NOT NULL AUTO_INCREMENT,
  `per_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `per_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `per_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`per_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`per_id`, `per_nombre`, `per_descripcion`, `per_estado`) VALUES
(1, 'SuperAdministrador', '', 1),
(2, 'Tramites', '', 1),
(3, 'Usuarios', '', 1),
(4, 'Estadística', '', 1),
(5, 'Consulta', '', 1),
(6, 'Empresa Externa', 'Puede ingresar tramites, consultar un tramite especifico. No puede modificar nada, puede consultar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `textos`
--

CREATE TABLE IF NOT EXISTS `textos` (
  `txt_id` int(20) NOT NULL AUTO_INCREMENT,
  `txt_pagina` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `txt_texto` text COLLATE utf8_spanish2_ci NOT NULL,
  `txt_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`txt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=42 ;

--
-- Volcado de datos para la tabla `textos`
--

INSERT INTO `textos` (`txt_id`, `txt_pagina`, `txt_texto`, `txt_estado`) VALUES
(1, 'configuracion', 'Esta sección es para administrar los valores de las variables de la aplicación.\r\n  Puede ingresar nuevos registros, editar o modificar los existentes y eliminarlos.', 1),
(2, 'menu', 'El <b>SistemaCentral de Trámites y Soluciones</b> es un Sistema de Trámites solicitados por entidades , clientes y/o áreas internas de la empresa que permitirá ingresar la información necesaria de los trámites y documentos asociados (recibidos, enviados, diligenciados) para gestionarlos adecuadamente dentro de los límites de tiempo establecidos, permitiendo controlar los tiempos máximos y los tiempos esperados en la ejecución de los pasos o etapas de los trámites de acuerdo con el tema y/o su complejidad facilitando así el cumplimiento de los acuerdos de servicio logrando un alto nivel de calidad del servicio.<br><br>\r\nEl principal objetivo del Sistema (<b> SistemaCentral de Trámites y Soluciones </b>) es permitir que las empresas trabajen de manera colaborativa en la gestión de los trámites: el diligenciamiento, el envío y recepción de documentos mediante un portal Web que facilite la administración y tracking (seguimiento) de los mismos para agilizar los procesos de respuesta de los trámites.', 1),
(3, 'tramites', 'En esta sección usted puede crear un trámite, agregarle el o los  documentos si lleva anexos. En esta sección usted podrá consultar y anotar observaciones para hacerle seguimiento de acuerdo con las directrices del diligenciamiento del trámite.', 1),
(4, 'index1', ' Debe ingresar sus datos para ingresar al sistema, si no los tiene, por favor registrese en la parte inferior está la opción.', 1),
(5, 'index2', 'Debe ingresar el código del trámite para consultar su seguimiento.', 1),
(6, 'menu1', 'Esta sección es para administrar los valores de las variables de la aplicación. Puede ingresar nuevos registros, editar o modificar los existentes y eliminarlos.', 1),
(7, 'menu2', 'En esta sección usted puede crear un trámite, agregarle el o los documentos si lleva anexos. En esta sección usted podrá consultar y anotar observaciones para hacerle seguimiento de acuerdo con las directrices del diligenciamiento del trámite. ', 1),
(8, 'tipotramite', 'Es la Clasificación de los trámites en la empresa.', 1),
(9, 'nombretramite', 'Es el nombre que debe ser asignado para este tramite.', 1),
(10, 'usuarios', 'En esta sección usted podrá administrar los usuarios de esta aplicación.', 1),
(11, 'informes', 'En esta sección se podrá consultar el historial de los trámites enviados y recibidos por la empresa y exportarlos a excel para facilitar su análisis', 1),
(25, 'apelreg', 'El o los apellidos tal como aparecen en el Documento de Identificación.', 1),
(16, 'consecutivo', 'Este Consecutivo lo designa el sistema después de almacenar o guardar esta información.', 1),
(17, 'empresalianza', 'Seleccione para cual de las Empresas Propias está dirigido el trámite.', 1),
(18, 'sedealianza', 'Para seleccionar Sede de la Empresa Propia, primero debe seleccionar una Empresa .', 1),
(19, 'deptoalianza', 'Para seleccionar un Departamento debe seleccionar una Sede de la Empresa Propia.', 1),
(20, 'categoria', 'Permite clasificar el documento como documentos que requieren una respuesta o solo cumplen una función informativa', 1),
(21, 'origen', 'Se refiere al origen del trámite, si es interno o propio de la empresa o si corresponde a una entidad externa.', 1),
(22, 'prioridad', 'Prioridad o Urgencia del Trámite', 1),
(23, 'nombrecorto', 'Es el nombre que va a mostrar el sistema en la parte superior Ej. Pedro Tobo', 1),
(24, 'nombrereg', 'El nombre propio o nombre de pila tal como aparece en el Documento de identificación', 1),
(26, 'docid', 'El número del Documento de Identificación.', 1),
(27, 'registrese', 'Por favor diligencie los campos correctamente y recibirá un e.mail a la dirección \r\nregistrada con su password para ingresar a la aplicación.<BR><BR> \r\n                                      <b>IMPORTANTE: Solo ingresar números en los campos de número de teléfonos</b><br><br>Muchas Gracias!', 1),
(28, 'tipoempresa', 'Seleccione el Tipo de Empresa que maneja el sistema', 1),
(29, 'empresa', 'Para seleccionar una opción debió haber seleccionado alguna opción de Tipo Empresa', 1),
(30, 'direccion', 'Indica el lugar físico donde trabaja o reside.', 1),
(31, 'destinatarioid', 'Selección del "<b>Cargo - Usuario</b>" del departamento del Grupo Alianza que corresponde al Departamento de la Empresa Propia seleccionada.', 1),
(32, 'destinatario', 'Se ingresa el nombre impreso en el documento si es para un destinatario no existente en la selección.', 1),
(33, 'remitente', 'Es la persona quien firma o envía eldocumento', 1),
(34, 'fechadoc', 'Es la fecha que tiene el documento. El formato para la fecha debe ser: AAAA-MM-DD Ejemplo: 2003-08-13. Puede situarse en la caja de texto aparecerá una ventana con un calendario del mes actual para que seleccione la fecha deseada.', 1),
(35, 'asunto', ' Referencia o tema del documento.', 1),
(36, 'anexos', 'Si es necesario hacer alguna observación y hacer referencia a los anexos del documento.', 1),
(37, 'observacion', 'Si es necesario hacer alguna observación para hacer referencia al documento.', 1),
(38, 'tipodoc', 'Permite seleccionar el tipo de los diferentes documentos que se reciben o envian.', 1),
(39, 'entremitente', 'Si el nombre de la Empresa o Entidad  Remitente no se encuentra en el listado, debe ingresarse manualmente.', 1),
(40, 'claseempresa', 'Diferenciacion clientes de otros terceros', 1),
(41, 'tipoempresadoc', 'Clasificación por  numero de trabajadores', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE IF NOT EXISTS `tipo_documento` (
  `txd_id` int(11) NOT NULL AUTO_INCREMENT,
  `txd_nombre` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `txd_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `txd_estado` int(1) NOT NULL DEFAULT '1',
  `txd_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txd_usu_id` int(11) NOT NULL,
  `txd_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`txd_id`, `txd_nombre`, `txd_descripcion`, `txd_estado`, `txd_fechahora`, `txd_usu_id`, `txd_equipo`) VALUES
(1, 'CARTA INFORMATIVA', '', 1, '2012-08-27 20:23:54', 1, '190.85.79.201'),
(2, 'CARTA COBRANZA', '', 1, '2012-08-27 20:24:16', 1, '190.85.79.201'),
(3, 'NOTIFICACION entidad gubernamental', '', 1, '2012-08-27 20:28:46', 1, '190.85.79.201'),
(4, 'RESOLUCION entidad gubernamental', '', 1, '2012-08-27 20:28:04', 1, '190.85.79.201'),
(5, 'CARTA COMERCIAL', '', 1, '2012-08-27 20:26:31', 1, '190.85.79.201'),
(6, 'NOTIFICACION PROCESO JURIDICO', '', 1, '2012-08-27 20:29:25', 1, '190.85.79.201'),
(7, 'PROCESO JURIDICO', '', 1, '2012-08-27 20:29:51', 1, '190.85.79.201'),
(8, 'NFORMR', '', 0, '2013-01-03 16:10:24', 1, '127.0.0.1'),
(9, 'INFORME IMPLEMENTACION', '', 1, '2013-03-01 12:57:28', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_empresacliente`
--

CREATE TABLE IF NOT EXISTS `tipo_empresacliente` (
  `txe_id` int(11) NOT NULL AUTO_INCREMENT,
  `txe_ext_id` int(11) NOT NULL COMMENT 'empresa_tipo id',
  `txe_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `txe_descricion` text COLLATE utf8_spanish2_ci NOT NULL,
  `txe_estado` int(1) NOT NULL DEFAULT '1',
  `txe_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txe_usu_id` int(11) NOT NULL,
  `txe_equipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txe_id`),
  KEY `txe_ext_id` (`txe_ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tipo Empresas Cliente' AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `tipo_empresacliente`
--

INSERT INTO `tipo_empresacliente` (`txe_id`, `txe_ext_id`, `txe_nombre`, `txe_descricion`, `txe_estado`, `txe_fechahora`, `txe_usu_id`, `txe_equipo`) VALUES
(1, 4, 'DE 005 A 030 TRABAJADORES ok', 'son las empresas que su recurso humano es de MÃƒÂNIMO 5 personas y MÃƒÂXIMO de 30 personas\r\n\r\n', 1, '2013-01-04 01:52:28', 1, ''),
(2, 4, 'DE 031 A 070 TRABAJADORES', 'FELIPE CANCIÃƒÂ³N', 1, '2013-01-04 02:51:36', 1, '127.0.0.1'),
(3, 4, 'DE 071 A 120 TRABAJADORES', '', 1, '2012-08-27 21:25:59', 1, '190.85.79.201'),
(4, 1, '121 A 200 TRABAJADORES', '', 1, '2012-08-27 21:23:28', 1, '190.85.79.201'),
(5, 1, '120 A 200 TRABAJADORES', 'contratistas 120 ARTÃƒÂCULOS ', 1, '2013-01-04 02:15:21', 1, ''),
(6, 4, 'DE 121 A 200 TRABAJADORES', '', 1, '2012-08-27 21:24:45', 1, '190.85.79.201'),
(7, 4, 'MAS DE 200 TRABAJADORES', '', 1, '2012-08-27 21:24:22', 1, '190.85.79.201'),
(8, 2, 'COMPRAS Y SERVICIOS OFICINA ok', '', 1, '2012-09-24 10:33:41', 1, ''),
(9, 2, 'laboratorios medicos', '', 1, '2012-09-24 10:27:27', 1, ''),
(10, 2, 'SERVICIOS OBRAS CIVILES', '', 1, '2012-08-27 21:29:17', 1, '190.85.79.201'),
(11, 1, 'de 400 a 800 trabajadores', '', 1, '2013-01-04 01:27:23', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE IF NOT EXISTS `tramite` (
  `tra_id` int(11) NOT NULL AUTO_INCREMENT,
  `tra_usu_id` int(11) NOT NULL COMMENT 'Usuario que ingresa el tramite',
  `tra_txt_id` int(11) NOT NULL COMMENT 'Tipo Tramite',
  `tra_ext_id` int(11) NOT NULL COMMENT 'Estado Tramite',
  `tra_cxt_id` int(11) NOT NULL COMMENT 'Categoria Tramite',
  `tra_txo_id` int(11) NOT NULL COMMENT 'Tipo Origen Tramite',
  `tra_ciu_id` int(11) NOT NULL,
  `tra_axe_id` int(11) NOT NULL,
  `tra_car_id` int(11) NOT NULL,
  `tra_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tra_nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `tra_prioridad` int(1) NOT NULL,
  `tra_consecutivo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '"NO"',
  `tra_observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `tra_estado` int(1) NOT NULL DEFAULT '1',
  `tra_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`tra_id`,`tra_consecutivo`),
  UNIQUE KEY `tra_consecutivo` (`tra_consecutivo`),
  KEY `tra_txt_id` (`tra_txt_id`),
  KEY `tra_ext_id` (`tra_ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla base de los tramites' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`tra_id`, `tra_usu_id`, `tra_txt_id`, `tra_ext_id`, `tra_cxt_id`, `tra_txo_id`, `tra_ciu_id`, `tra_axe_id`, `tra_car_id`, `tra_fechahora`, `tra_nombre`, `tra_prioridad`, `tra_consecutivo`, `tra_observaciones`, `tra_estado`, `tra_equipo`) VALUES
(1, 1, 2, 1, 1, 2, 145, 3, 0, '2013-03-06 02:46:00', 'ACTA MILENA', 2, 'CIAL201324000', 'INCORRECTO', 1, '127.0.0.1'),
(2, 1, 1, 1, 1, 1, 411, 3, 0, '2013-03-10 19:35:23', 'CERRADO', 2, 'CIAL201324001', 'LAURITA', 1, '127.0.0.1'),
(3, 1, 3, 1, 1, 2, 147, 3, 0, '2013-03-10 21:50:42', 'HUNI', 1, 'CIAL201324002', 'KOKO', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_adicionales`
--

CREATE TABLE IF NOT EXISTS `tramite_adicionales` (
  `pxa_id` int(11) NOT NULL AUTO_INCREMENT,
  `pxa_tram_id` int(11) NOT NULL,
  `pxa_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pxa_nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `pxa_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `pxa_limite` int(11) NOT NULL,
  `pxa_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pxa_id`),
  KEY `pxa_tram_id` (`pxa_tram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='pasos adicionales en el tramite' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_categoria`
--

CREATE TABLE IF NOT EXISTS `tramite_categoria` (
  `cxt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cxt_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cxt_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `cxt_estado` int(1) NOT NULL DEFAULT '1',
  `cxt_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cxt_usu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cxt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Es informativo o requiere respuesta' AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tramite_categoria`
--

INSERT INTO `tramite_categoria` (`cxt_id`, `cxt_nombre`, `cxt_descripcion`, `cxt_estado`, `cxt_fechahora`, `cxt_usu_id`) VALUES
(1, 'Requiere Respuesta', 'Indica que el trámite requiere después de su dilingeciamiento una respuesta directa al remitente.', 1, '2012-05-20 02:04:20', 1),
(2, 'Solo Informativo', '', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_documentos`
--

CREATE TABLE IF NOT EXISTS `tramite_documentos` (
  `dxt_id` int(11) NOT NULL AUTO_INCREMENT,
  `dxt_tra_id` int(11) NOT NULL,
  `dxt_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `dxt_file` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `dxt_observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `dxt_estado` int(1) NOT NULL DEFAULT '1',
  `dxt_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dxt_usu_id` int(11) NOT NULL,
  `dxt_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`dxt_id`),
  KEY `fk_tramite` (`dxt_tra_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Documentos relacionados con el tramite' AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tramite_documentos`
--

INSERT INTO `tramite_documentos` (`dxt_id`, `dxt_tra_id`, `dxt_nombre`, `dxt_file`, `dxt_observaciones`, `dxt_estado`, `dxt_fechahora`, `dxt_usu_id`, `dxt_equipo`) VALUES
(1, 1, 'ccvv', 'MILENA AMAYA DE LA ROSA2013.pdf', '', 1, '2013-03-10 01:43:36', 1, '127.0.0.1'),
(2, 1, 'ccvv', 'MILENA AMAYA DE LA ROSA2013.pdf', '', 1, '2013-03-10 14:23:52', 1, '127.0.0.1'),
(3, 3, 'huh', 'cpanelhijostartics.docx', '', 1, '2013-03-10 23:46:30', 1, '127.0.0.1'),
(4, 3, 'xls', 'Libro1.xlsx', '', 1, '2013-03-10 23:48:44', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_estado`
--

CREATE TABLE IF NOT EXISTS `tramite_estado` (
  `ext_id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ext_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `ext_estado` int(1) NOT NULL DEFAULT '1',
  `ext_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ext_usu_id` bigint(20) NOT NULL,
  `ext_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ext_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tramite_estado`
--

INSERT INTO `tramite_estado` (`ext_id`, `ext_nombre`, `ext_descripcion`, `ext_estado`, `ext_fechahora`, `ext_usu_id`, `ext_equipo`) VALUES
(1, 'ASIGNADO', 'CUANDO EL TRAMITE ES INGRESADO EN EL SISTEMA, SE ASIGNA A UNA PERSONA inteligente y capaz', 1, '2013-04-09 01:08:38', 1, '127.0.0.1'),
(2, 'EN PROCESO', 'SE EJECUTO EL PRIMER PASO DEL PROCESO DEL TRAMITE EN CUESTION', 1, '2012-09-24 19:01:46', 1, '127.0.0.1'),
(3, 'REASIGNADO', 'SE VUELVE A ASIGNAR EL TRAMITE  A OTRO FUNCIONARIO POR EL LÃƒÂDER O ADMINISTRADOR.', 1, '2013-01-06 15:14:03', 1, '127.0.0.1'),
(4, 'PRORROGADO', 'SE AMPLIA O SE ALARGA EL TIEMPO DEL PROCESO DEL TRAMITE, ESTA PRORROGA DEBE TENER EL VISTO BUENO DEL LÃƒÂDER.', 1, '2013-01-06 15:13:33', 1, '127.0.0.1'),
(5, 'SUSPENDIDO', 'NO ES POSIBLE DILIGENCIAR EL TRAMITE  POR FALTA DE ALGUN REQUISITO DEL SOLICITANTE, ES DECIR QUE EL RESPONSABLE ES EL SOLICITANTE', 1, '2013-01-06 15:14:31', 1, '127.0.0.1'),
(6, 'FINALIZADO', 'TRAMITE DILIGENCIADO O GESTIONADO CON ÃƒÂ‰XITO.', 1, '2013-01-06 15:12:58', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_frecuencia`
--

CREATE TABLE IF NOT EXISTS `tramite_frecuencia` (
  `txf_id` int(11) NOT NULL AUTO_INCREMENT,
  `txf_nombre` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `txf_dias` int(5) NOT NULL,
  `txf_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txf_usu_id` int(11) NOT NULL,
  `txf_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `txf_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Frecuencia de los tramites en dias' AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tramite_frecuencia`
--

INSERT INTO `tramite_frecuencia` (`txf_id`, `txf_nombre`, `txf_dias`, `txf_fechahora`, `txf_usu_id`, `txf_equipo`, `txf_estado`) VALUES
(1, 'Diario', 1, '2012-07-12 01:11:47', 1, 'MILE-PC', 1),
(2, 'Semanal', 7, '2012-08-27 19:36:34', 1, '190.85.79.201', 1),
(3, 'Mensual', 30, '2012-07-11 00:56:44', 1, 'MILE-PC', 1),
(4, 'Semestral', 180, '2012-07-11 00:57:06', 1, 'MILE-PC', 1),
(7, 'N/A (Sin repeticion)', 0, '2012-08-17 18:42:29', 1, 'mile-PC', 1),
(8, 'CATORCENAL', 14, '2012-08-24 13:48:17', 1, '190.85.79.201', 1),
(9, 'BIMESTRAL', 60, '2012-08-24 14:05:55', 1, '190.85.79.201', 1),
(10, 'QUINCENAL', 15, '2012-08-27 19:48:04', 1, '190.85.79.201', 1),
(11, 'TRIMESTRAL', 90, '2012-08-27 19:48:24', 1, '190.85.79.201', 1),
(12, 'ANUAL', 360, '2012-08-27 19:48:39', 1, '190.85.79.201', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_observaciones`
--

CREATE TABLE IF NOT EXISTS `tramite_observaciones` (
  `txo_id` int(11) NOT NULL AUTO_INCREMENT,
  `txo_tra_id` int(11) NOT NULL,
  `txo_ext_id` int(11) NOT NULL COMMENT 'Estado Tramite',
  `txo_usu_id` int(11) NOT NULL,
  `txo_txe_id` int(11) NOT NULL COMMENT 'Tipo empresa Cliente',
  `txo_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txo_observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `txo_reales` text COLLATE utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL DEFAULT '1',
  `txo_ip` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txo_id`),
  KEY `txo_tra_id` (`txo_tra_id`),
  KEY `txo_usu_id` (`txo_usu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tramite_observaciones`
--

INSERT INTO `tramite_observaciones` (`txo_id`, `txo_tra_id`, `txo_ext_id`, `txo_usu_id`, `txo_txe_id`, `txo_fechahora`, `txo_observaciones`, `txo_reales`, `txo_estado`, `txo_ip`) VALUES
(1, 1, 1, 1, 0, '2013-03-06 02:46:00', 'INCORRECTO', '', 1, '127.0.0.1'),
(2, 2, 1, 1, 0, '2013-03-10 19:35:23', 'LAURITA', '', 1, '127.0.0.1'),
(3, 3, 1, 1, 0, '2013-03-10 21:50:42', 'KOKO', '', 1, '127.0.0.1'),
(4, 3, 1, 1, 0, '2013-03-10 23:49:28', 'EN CINCO MINUTOS', 'NADA POR HACER', 1, '127.0.0.1'),
(5, 3, 3, 1, 0, '2013-03-11 01:29:35', 'FULL', 'A CARITO', 1, '127.0.0.1'),
(6, 3, 3, 1, 0, '2013-03-11 01:30:24', 'FULL', 'A CARITO', 1, '127.0.0.1'),
(7, 3, 3, 1, 0, '2013-03-11 01:31:18', 'FULL', 'A CARITO', 1, '127.0.0.1'),
(8, 3, 3, 1, 0, '2013-03-11 01:35:01', 'FULL', 'A CARITO', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_pasos`
--

CREATE TABLE IF NOT EXISTS `tramite_pasos` (
  `pxt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pxt_txt_id` int(11) NOT NULL,
  `pxt_txp_id` int(1) NOT NULL COMMENT 'prefijo',
  `pxt_nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `pxt_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `pxt_tmpolimite` int(11) NOT NULL,
  `pxt_uxt_id` int(1) NOT NULL DEFAULT '1' COMMENT 'Dias',
  `pxt_estado` int(1) NOT NULL DEFAULT '1',
  `pxt_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pxt_usu_id` bigint(20) NOT NULL,
  `pxt_equipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `pxt_ip` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`pxt_id`,`pxt_txt_id`),
  KEY `fk_tipotramite` (`pxt_txt_id`),
  KEY `pxt_txp_id` (`pxt_txp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Pasos de los Tipo_Tramites' AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `tramite_pasos`
--

INSERT INTO `tramite_pasos` (`pxt_id`, `pxt_txt_id`, `pxt_txp_id`, `pxt_nombre`, `pxt_descripcion`, `pxt_tmpolimite`, `pxt_uxt_id`, `pxt_estado`, `pxt_fechahora`, `pxt_usu_id`, `pxt_equipo`, `pxt_ip`) VALUES
(1, 1, 1, 'RECOGER FACTURAS DEL DEPARTAMENTO', 'ES RECOGER FACTURAS', 2, 1, 1, '2013-01-04 02:24:04', 1, '', ''),
(2, 1, 1, 'DILIGENCIAR SISTEMA CONTABILIDAD', 'DILIENCIAR ESTAS FACTURAS', 2, 1, 1, '2013-01-04 02:25:13', 1, '127.0.0.1', ''),
(3, 2, 1, 'RECEPCION ACTA EXTERNA PREVIA', '', 1, 1, 1, '2013-01-04 02:46:36', 1, '', ''),
(4, 2, 1, 'DILIGENCIA ACTA', '', 1, 1, 1, '2013-01-04 02:47:22', 1, '', ''),
(5, 1, 2, 'FISCALIZAR', '', 5, 1, 1, '2013-01-04 02:54:32', 1, '127.0.0.1', ''),
(6, 3, 1, 'RECEPCION QUEJA', 'LA PERSONA ENCARGADA DE RECIBIR LOS DOCUMENTOS EN LA EMPRESA REGISTRA ESTE TRAMITE INDICANDO LA EMPRESA QUE LO ENVIA', 1, 1, 1, '2013-01-04 20:24:27', 1, '127.0.0.1', ''),
(7, 3, 1, 'DIRECCION QUEJA HACIA DEPARTAMENTO', 'SE DIRIGE LA QUEJA HACIA EL DEPARTAMENTO, BUSCANDO RESPUESTAS O OTRAS VERSIONES', 2, 1, 1, '2013-01-04 20:38:35', 1, '', ''),
(8, 3, 1, 'PREPARAR RESPUESTA AL USUARIO AFECTADO', '', 1, 1, 1, '2013-01-04 20:28:18', 1, '127.0.0.1', ''),
(9, 3, 1, 'ENTREGA SOLUCION AL USUARIO AFECTADO', 'SE ELABORA SOLUCIÃƒÂ“N PARA DEJAR SATISFECHO AL CLIENTE', 1, 1, 1, '2013-01-04 20:29:31', 1, '127.0.0.1', ''),
(10, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:19:44', 1, '127.0.0.1', ''),
(11, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:23:27', 1, '127.0.0.1', ''),
(12, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:24:07', 1, '127.0.0.1', ''),
(13, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:26:07', 1, '127.0.0.1', ''),
(14, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:27:47', 1, '127.0.0.1', ''),
(15, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:33:09', 1, '127.0.0.1', ''),
(16, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:33:50', 1, '127.0.0.1', ''),
(17, 2, 2, 'POS', 'OKOK', 5, 1, 1, '2013-02-28 18:34:31', 1, '127.0.0.1', ''),
(18, 4, 1, 'PREPARACION ASUNTO SERVIDOR', '', 1, 1, 1, '2013-03-01 12:59:26', 1, '127.0.0.1', ''),
(19, 4, 1, 'RADICACION INFORME FIRMA EDUARDO', '', 1, 1, 1, '2013-03-01 13:00:07', 1, '127.0.0.1', ''),
(20, 4, 2, 'ACOMPAÃ‘AMIENTO', '', 2, 1, 1, '2013-03-01 13:00:40', 1, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_prefijo`
--

CREATE TABLE IF NOT EXISTS `tramite_prefijo` (
  `txp_id` int(11) NOT NULL AUTO_INCREMENT,
  `txp_nombre` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `txp_descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `txp_estado` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`txp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tramite_prefijo`
--

INSERT INTO `tramite_prefijo` (`txp_id`, `txp_nombre`, `txp_descripcion`, `txp_estado`) VALUES
(1, 'pre (Dentro del proceso del trámite)', 'DENTRO DEL PROCESO DEL TRAMITE', 1),
(2, 'pos (Posterior al cierre del trámite)', 'POSTERIOR AL CIERRE DEL TRAMITE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_reasignacion`
--

CREATE TABLE IF NOT EXISTS `tramite_reasignacion` (
  `txr_id` int(11) NOT NULL AUTO_INCREMENT,
  `txr_tra_id` int(11) NOT NULL,
  `txr_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txr_usuinicial` int(11) NOT NULL,
  `txr_usuasig` int(11) NOT NULL,
  `txr_observaciones` text COLLATE utf8_spanish2_ci NOT NULL,
  `txr_estado` int(1) NOT NULL DEFAULT '1',
  `txr_usu_guarda` int(11) NOT NULL,
  `txr_ciales` text COLLATE utf8_spanish2_ci NOT NULL,
  `txr_ip` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txr_id`),
  KEY `txr_tra_id` (`txr_tra_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tramite_reasignacion`
--

INSERT INTO `tramite_reasignacion` (`txr_id`, `txr_tra_id`, `txr_fechahora`, `txr_usuinicial`, `txr_usuasig`, `txr_observaciones`, `txr_estado`, `txr_usu_guarda`, `txr_ciales`, `txr_ip`) VALUES
(1, 3, '2013-03-11 01:31:18', 1, 10, 'A CARITO', 1, 1, 'FULL', '127.0.0.1'),
(2, 3, '2013-03-11 01:35:01', 1, 10, 'A CARITO', 1, 1, 'FULL', '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_seguimiento`
--

CREATE TABLE IF NOT EXISTS `tramite_seguimiento` (
  `txs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txs_tra_id` int(11) NOT NULL COMMENT 'id tramite',
  `txs_usu_id` int(11) NOT NULL COMMENT 'id usuario',
  `txs_asig_id` int(11) NOT NULL COMMENT 'Usuario Asignado',
  `txs_ip` varchar(50) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'ip del usuario',
  `txs_ext_id` int(11) NOT NULL COMMENT 'Estado del tramite',
  `txs_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`txs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tramite_seguimiento`
--

INSERT INTO `tramite_seguimiento` (`txs_id`, `txs_tra_id`, `txs_usu_id`, `txs_asig_id`, `txs_ip`, `txs_ext_id`, `txs_fechahora`) VALUES
(1, 1, 1, 1, '127.0.0.1', 1, '2013-03-06 02:46:00'),
(2, 2, 1, 8, '127.0.0.1', 1, '2013-03-10 19:35:23'),
(3, 3, 1, 1, '127.0.0.1', 1, '2013-03-10 21:50:42'),
(4, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:17:01'),
(5, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:18:08'),
(6, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:22:25'),
(7, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:29:35'),
(8, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:30:24'),
(9, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:31:18'),
(10, 3, 1, 10, '127.0.0.1', 3, '2013-03-11 01:35:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_tipo`
--

CREATE TABLE IF NOT EXISTS `tramite_tipo` (
  `txt_id` int(11) NOT NULL AUTO_INCREMENT,
  `txt_dxe_id` int(11) NOT NULL COMMENT 'Departamento Grupo Alianza',
  `txt_txf_id` int(11) NOT NULL DEFAULT '1' COMMENT 'Frecuencia',
  `txt_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `txt_dias` int(2) NOT NULL,
  `txt_repite` enum('S','N') COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'N',
  `txt_veces` int(3) NOT NULL COMMENT 'Veces Repite',
  `txt_quin1` int(2) NOT NULL,
  `txt_quin2` int(2) NOT NULL,
  `txt_ultmes` enum('S','N') COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'N',
  `txt_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `txt_tmaximo` int(11) NOT NULL,
  `txt_uxt_id` int(11) NOT NULL DEFAULT '1' COMMENT 'Solo Dias',
  `txt_estado` int(1) NOT NULL DEFAULT '1',
  `txt_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txt_usu_id` bigint(20) NOT NULL,
  `txt_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `txt_ip` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txt_id`),
  KEY `txt_txf_id` (`txt_txf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tramite_tipo`
--

INSERT INTO `tramite_tipo` (`txt_id`, `txt_dxe_id`, `txt_txf_id`, `txt_nombre`, `txt_dias`, `txt_repite`, `txt_veces`, `txt_quin1`, `txt_quin2`, `txt_ultmes`, `txt_descripcion`, `txt_tmaximo`, `txt_uxt_id`, `txt_estado`, `txt_fechahora`, `txt_usu_id`, `txt_equipo`, `txt_ip`) VALUES
(1, 0, 3, 'CIERRE FACTURACION', 2, 'S', 12, 0, 0, '', 'ESTO ES UN CIERRE DE FACTURAS DE CONTABILIDAD', 4, 1, 1, '2013-01-04 02:22:52', 1, '127.0.0.1', ''),
(2, 0, 7, 'ACTA REUNION EXTERNA', 0, 'N', 0, 0, 0, '', 'ES EL REGISTRO DE UN ACTA', 2, 1, 1, '2013-01-04 02:26:08', 1, '127.0.0.1', ''),
(3, 0, 10, 'QUEJA CLIENTE CONSTRUCCION', 0, 'S', 4, 5, 20, '', 'UNA QUEJA ES UN REGALO, ES UNA OPORTUNIDAD PARA MEJORAR Y CONOCER LA OPINIÃƒÂ³N DEL CLIENTE SOBRE NUESTRO SERVICIO, PORQUE PUEDE HABER CLIENTES INSATISFECHOS QUE NO SE QUEJAN, Y SOLO CONOCEMOS SU MALESTAR CUANDO SE VAN.\r\n\r\nNO ES UN FRACASO, UNA INJUSTICIA, UNA DISCULPA PARA NO PAGAR, DETRÃƒÂ¡S DE ELLAS SIEMPRE HAY INFORMACIÃƒÂ³N VALIOSA:\r\n\r\nNOS PERMITEN CONOCER LA PERCEPCIÃƒÂ³N QUE EL CLIENTE TIENE DE NUESTROS SERVICIOS.', 5, 1, 1, '2013-01-04 20:21:56', 1, '127.0.0.1', ''),
(4, 0, 2, 'ACTA REUNION SISTEMAS', 2, 'S', 3, 0, 0, '', '', 2, 1, 1, '2013-03-01 12:58:41', 1, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite_tipo_origen`
--

CREATE TABLE IF NOT EXISTS `tramite_tipo_origen` (
  `txo_id` int(11) NOT NULL AUTO_INCREMENT,
  `txo_nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `txo_descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `txo_estado` int(1) NOT NULL DEFAULT '1',
  `txo_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `txo_usu_id` bigint(20) NOT NULL,
  `txo_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`txo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Origen interno o externo' AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tramite_tipo_origen`
--

INSERT INTO `tramite_tipo_origen` (`txo_id`, `txo_nombre`, `txo_descripcion`, `txo_estado`, `txo_fechahora`, `txo_usu_id`, `txo_equipo`) VALUES
(1, 'Interno (tramite en la propia empresa)', 'Se refiere a un tramite en la propia empresa', 1, '2012-07-11 22:07:05', 1, 'MILE-PC'),
(2, 'Externa (tramite proveniente de una entidad externa))', 'Se refiere a que el tramite es para o desde una empresa cliente', 1, '2012-07-11 22:06:54', 1, 'MILE-PC'),
(3, 'JIJIJI', '', 0, '2013-01-03 16:09:53', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_act_id` int(11) NOT NULL DEFAULT '1' COMMENT 'Indica si el usuario está activo en el Sistema',
  `usu_usu_id` int(11) NOT NULL DEFAULT '1' COMMENT 'Usuario que ingresa',
  `usu_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usu_exc_id` int(20) NOT NULL COMMENT 'id Empresa Cliente',
  `usu_car_id` int(11) NOT NULL,
  `usu_car_lider` int(11) NOT NULL,
  `usu_per_id` int(11) NOT NULL,
  `usu_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_apel` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_corto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_cedula` int(11) NOT NULL,
  `usu_user` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_password` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_emailper` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_emailcor` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_dir` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_fijo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usu_celular` int(11) NOT NULL,
  `usu_obs` text COLLATE utf8_spanish2_ci NOT NULL,
  `usu_estado` int(1) NOT NULL DEFAULT '1',
  `usu_equipo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`usu_id`),
  UNIQUE KEY `usu_cedula` (`usu_cedula`),
  KEY `perfil` (`usu_per_id`),
  KEY `fk_cargo` (`usu_car_id`),
  KEY `usu_exc_id` (`usu_exc_id`),
  KEY `usu_usu_id` (`usu_usu_id`),
  KEY `usu_act_id` (`usu_act_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_act_id`, `usu_usu_id`, `usu_fechahora`, `usu_exc_id`, `usu_car_id`, `usu_car_lider`, `usu_per_id`, `usu_nombre`, `usu_apel`, `usu_corto`, `usu_cedula`, `usu_user`, `usu_password`, `usu_emailper`, `usu_emailcor`, `usu_dir`, `usu_fijo`, `usu_celular`, `usu_obs`, `usu_estado`, `usu_equipo`) VALUES
(1, 2, 1, '2012-04-18 22:51:04', 0, 1, 1, 1, 'Milena', ' Amaya de la Rosa', 'Milena Amaya ', 78, 'mile', 'ea08e678edbf8892b8d67fc36f4a3bf9', 'milenaamaya@gmail.com', 'milenita@mail.com', 'direccion muy larga', '6888990', 2147483647, 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 1, ''),
(5, 2, 1, '2012-08-15 23:42:17', 0, 1, 5, 2, 'eDUARDO', 'GRANADA', 'Eduardo Granada', 794444, 'ed95_granada', '18e9a4e174a546758ce0f57b92b74a4b', 'EDO@MAIL.COM', 'EDO@MAIL.COM', 'CALLE 200', '7878N', 3187676, 'LEJOS', 1, ''),
(6, 1, 1, '2012-11-12 20:07:12', 0, 7, 0, 2, 'MARTA HELENA', 'HERRERA SUAREZ', 'MARTA HERRERA', 67890, 'ma_herrera', 'ad51b1143ae374ff9b79091180bc4959', 'MARTA@MAIL.COM', 'LALA@MAIL.COM', 'VERAGUAS', '789789', 31786956, 'MAMA DE JAIRO', 1, ''),
(7, 1, 1, '2012-11-12 20:09:15', 0, 6, 0, 2, 'HUGO ', 'ROMERO PAEZ', 'HUGO PAEZ', 789654321, 'hu_romero', 'e18623c4a60a9cc0e78fbf9c8c7bcf8f', 'HUGO@MAIL.COM', 'HUGO@MAIL.COM', 'ALHAMBRA', '67895', 31245678, 'ES UNA PRUEBITA', 1, ''),
(8, 1, 1, '2012-11-12 20:11:13', 0, 4, 0, 2, 'LAURA ALEJANDRA', 'DIAZ RINCON', 'LAURA DIAZ', 8765432, 'la_diaz', '5ead00903c9d0f4cfa46e91d92edbeea', 'LALA1@MAIL.COM', 'LALA@MAIL.COM', 'CARLOS LLERAS', '4768584', 2147483647, 'ES MI PRINCESITA DIVINA', 1, ''),
(9, 1, 1, '2012-11-30 21:28:59', 0, 5, 0, 2, 'RODRIGO', 'RESTREPO', 'RODRIGUITO', 8888, 'ro38_restrepo', 'db8ca81db03bae39743c0a9b7a612b22', 'II@MM.COM', 'AA@MA.COM', 'BHGHJ', '7676776', 566565, 'HGYGGYGYGY', 1, ''),
(10, 1, 1, '2012-11-30 21:30:11', 0, 0, 5, 2, 'CAROL', 'ARELLANO', 'CARITO', 99778, 'ca_arellano', 'e3a058635658f3b102c36a6524d960bc', 'KOKO@HJ.CON', 'JIJI@NJ.COM', 'HHHHJH', '87879', 7979997, 'HGHJJHJHHGJ', 1, ''),
(11, 1, 1, '2013-01-04 18:11:09', 3, 0, 0, 6, 'JORGE', 'BUCAY', 'JORGE BUCAY', 8989, 'jo_bucay', '827ccb0eea8a706c4c34a16891f84e7b', 'MILENAAMAYA@GMAIL.COM', 'MILENITA@MAIL.COM', 'CALLE 76', '8766', 312455, 'JUYYGYGYYGYGYGYY UHUU HUHU', 1, ''),
(12, 2, 1, '2013-03-19 15:15:10', 0, 4, 0, 2, 'MARCELA', 'MARVAEZ', 'MARCE', 678, 'ma_marvaez', 'b05916a72fb11e0441be94f919dc0fa8', 'MMAIL@NKNK.COM', 'MMAOL@MAIL.COM', 'DIR CRA', '876', 987, 'YGYGYGYG', 1, ''),
(13, 2, 1, '2013-03-19 15:39:58', 0, 1, 10, 2, 'MARCELAJJJ', 'NARVAEZ', 'MARCELA ROJAS', 6789, '', '', 'CARITOO@MAIL.COM', 'CARITO@MAIL.COM', 'DIR', '7878', 300, 'NIGUNITA de todos', 1, ''),
(14, 1, 1, '2013-03-21 15:01:12', 0, 2, 6, 2, 'SARITA MARIA', 'MONTALVO FUENTES', 'SARITA MONTALVO', 7896, 'sa_montalvo', '502b1eba5dddc969ada38b23a41a9726', 'KOKO@HJ.CON', 'CARITO@MAIL.COM', 'HHHHJH', '876', 7979997, 'ESS UNA PRUEBA DE PASSRORD', 1, ''),
(15, 1, 1, '2013-03-21 16:12:33', 0, 7, 0, 2, 'PERLA MARIA', 'RODRIGUEZ OSPINA', 'PERLA OSPINA', 789543, 'pe_rodriguez', 'e6948d8e925e04af8582811b2b7c14d5', 'PERL@MAIL.COM', 'PERL@MAIL.COM', 'HHHHJH', '890', 300, '', 1, ''),
(16, 1, 1, '2013-03-21 16:40:50', 0, 4, 5, 2, 'ERIC ', 'CORBERA', 'ERIC CORBERA', 76578, 'er_corbera', '53d9bbbd3be6466e50b2570e119ff609', 'MMAIL@NKNK.COM', 'MMAOL@MAIL.COM', 'DIR', '87879', 7979997, 'CLASE', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu_log`
--

CREATE TABLE IF NOT EXISTS `usu_log` (
  `uxl_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uxl_usu_id` int(11) NOT NULL,
  `uxl_activo` int(11) NOT NULL DEFAULT '0',
  `uxl_accion` varchar(400) COLLATE utf8_spanish2_ci NOT NULL,
  `uxl_equipo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `uxl_fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uxl_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla Verifica Usuario Activo' AUTO_INCREMENT=74 ;

--
-- Volcado de datos para la tabla `usu_log`
--

INSERT INTO `usu_log` (`uxl_id`, `uxl_usu_id`, `uxl_activo`, `uxl_accion`, `uxl_equipo`, `uxl_fechahora`) VALUES
(1, 1, 0, 'Ingreso tramiteCIAL201324000', '127.0.0.1', '2013-03-06 02:46:00'),
(2, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-06 16:22:12'),
(3, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-06 16:40:26'),
(4, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-08 14:26:53'),
(5, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-09 21:29:03'),
(6, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-09 23:08:37'),
(7, 1, 0, 'Ingreso Documento tramiteCIAL201324000', '127.0.0.1', '2013-03-09 23:23:17'),
(8, 1, 0, 'Modifica Documento tramiteCIAL201324000', '127.0.0.1', '2013-03-09 23:29:20'),
(9, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 01:42:31'),
(10, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 19:34:18'),
(11, 1, 0, 'Ingreso tramiteCIAL201324001', '127.0.0.1', '2013-03-10 19:35:23'),
(12, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-10 21:49:18'),
(13, 1, 0, 'Ingreso tramiteCIAL201324002', '127.0.0.1', '2013-03-10 21:50:42'),
(14, 1, 0, 'Carga Documentos tramite ', '127.0.0.1', '2013-03-10 23:48:44'),
(15, 1, 0, 'Apuntaron observaciones tramite ', '127.0.0.1', '2013-03-10 23:49:28'),
(16, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-11 01:14:19'),
(17, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:17:01'),
(18, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:18:08'),
(19, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:22:25'),
(20, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:29:35'),
(21, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:30:24'),
(22, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:31:18'),
(23, 1, 0, 'Reasignacion tramite CIAL201324002', '127.0.0.1', '2013-03-11 01:35:01'),
(24, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-11 01:35:11'),
(25, 1, 0, 'Ingreso registro tabla cargos id: 8', '127.0.0.1', '2013-03-11 03:00:43'),
(26, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-12 17:10:11'),
(27, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-12 21:04:53'),
(28, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 15:12:54'),
(29, 1, 0, 'Ingresar Usuarios', '127.0.0.1', '2013-03-19 15:15:12'),
(30, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 15:57:54'),
(31, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-19 16:06:21'),
(32, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 01:32:45'),
(33, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 01:47:30'),
(34, 1, 0, 'Modificar Usuarios', '127.0.0.1', '2013-03-20 01:48:16'),
(35, 1, 0, 'Modificar Usuarios', '127.0.0.1', '2013-03-20 03:06:12'),
(36, 1, 0, 'Modificar Usuarios', '127.0.0.1', '2013-03-20 03:06:29'),
(37, 1, 0, 'Modificar Usuarios', '127.0.0.1', '2013-03-20 03:15:33'),
(38, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 15:34:46'),
(39, 1, 0, 'Cambio cargo lider usuario a MARCELA ROJAS', '127.0.0.1', '2013-03-20 16:01:55'),
(40, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-20 23:46:12'),
(41, 1, 0, 'Cambio cargo lider usuario a MARCELA ROJAS', '127.0.0.1', '2013-03-21 01:37:46'),
(42, 1, 0, 'Cambio cargo lider usuario a ', '127.0.0.1', '2013-03-21 13:56:48'),
(43, 1, 0, 'Modificar Usuarios', '127.0.0.1', '2013-03-21 14:39:17'),
(44, 1, 0, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 15:01:14'),
(45, 1, 0, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 16:12:35'),
(46, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-03-21 16:18:48'),
(47, 14, 1, 'Ingresar Usuarios', '127.0.0.1', '2013-03-21 16:40:52'),
(48, 14, 1, 'Cambio cargo lider usuario a SARITA MONTALVO', '127.0.0.1', '2013-03-21 16:46:46'),
(49, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 17:19:20'),
(50, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 17:27:56'),
(51, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 17:28:13'),
(52, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 17:43:47'),
(53, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 23:54:14'),
(54, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-08 23:57:38'),
(55, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 00:03:54'),
(56, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 00:06:48'),
(57, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 00:29:14'),
(58, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 00:36:40'),
(59, 1, 0, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 00:48:57'),
(60, 1, 0, 'Modifico tabla tramite_estado id:1', '127.0.0.1', '2013-04-09 01:09:00'),
(61, 1, 0, 'Modifico tabla tramite_estado id:1', '127.0.0.1', '2013-04-09 01:11:10'),
(62, 1, 0, 'Modifico tabla tramite_estado id:1', '127.0.0.1', '2013-04-09 01:12:10'),
(63, 1, 0, 'Modifico tabla tramite_estado id:1', '127.0.0.1', '2013-04-09 01:14:35'),
(64, 1, 0, 'Modifico tabla tramite_estado id:1', '127.0.0.1', '2013-04-09 01:15:20'),
(65, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 01:43:00'),
(66, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 01:44:12'),
(67, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 01:47:30'),
(68, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 01:49:15'),
(69, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 01:51:20'),
(70, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-04-09 02:00:09'),
(71, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-05-06 01:16:05'),
(72, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-05-14 13:58:17'),
(73, 1, 1, 'Ingreso al SCTS', '127.0.0.1', '2013-05-14 14:54:27');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cardepto`
--
CREATE TABLE IF NOT EXISTS `v_cardepto` (
`dxe_id` int(11)
,`dxe_nombre` text
,`dxe_estado` int(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cargos`
--
CREATE TABLE IF NOT EXISTS `v_cargos` (
`car_id` int(11)
,`car_nombre` text
,`car_estado` int(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_depxdepal`
--
CREATE TABLE IF NOT EXISTS `v_depxdepal` (
`usu_id` int(11)
,`dxd_axe_id` int(11)
,`axe_nombre` varchar(150)
,`nom` varchar(253)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_dxdepto`
--
CREATE TABLE IF NOT EXISTS `v_dxdepto` (
`dxd_id` int(11)
,`nombre` text
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_empsede`
--
CREATE TABLE IF NOT EXISTS `v_empsede` (
`sede_id` int(11)
,`sede_nombre` varchar(403)
,`sede_estado` int(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_frecuencia`
--
CREATE TABLE IF NOT EXISTS `v_frecuencia` (
`txf_id` int(11)
,`txf_nombre` varchar(60)
,`txf_estado` int(1)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_obser`
--
CREATE TABLE IF NOT EXISTS `v_obser` (
`txo_fechahora` timestamp
,`tra_id` int(11)
,`txo_id` int(11)
,`tra_consecutivo` varchar(50)
,`car_nombre` varchar(253)
,`txo_observaciones` text
,`txo_reales` text
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pasostramite`
--
CREATE TABLE IF NOT EXISTS `v_pasostramite` (
`pxt_id` int(11)
,`pxt_nombre` varchar(480)
,`pxt_estado` int(1)
,`pxt_txt_id` int(11)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_usuario`
--
CREATE TABLE IF NOT EXISTS `v_usuario` (
`usu_id` int(11)
,`usu_car_id` int(11)
,`car_dxe_id` int(11)
,`dxe_nombre` varchar(150)
,`usu_corto` varchar(253)
,`sede_id` int(11)
,`sede_nombre` varchar(200)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_vistausu`
--
CREATE TABLE IF NOT EXISTS `v_vistausu` (
`usu_id` int(11)
,`usu_nombre` varchar(261)
,`car_nombre` varchar(200)
,`per_nombre` varchar(150)
,`usu_act_id` int(11)
,`usu_cedula` int(11)
,`usu_user` varchar(50)
,`usu_estado` int(1)
,`usu_emailper` varchar(200)
,`usu_emailcor` varchar(200)
,`usu_dir` varchar(200)
,`usu_fijo` varchar(200)
,`usu_celular` int(11)
,`usu_obs` text
,`exc_nombre` varchar(255)
,`cargo` text
);
-- --------------------------------------------------------

--
-- Estructura para la vista `v_cardepto`
--
DROP TABLE IF EXISTS `v_cardepto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cardepto` AS select `c`.`dxe_id` AS `dxe_id`,concat(`a`.`emp_nombre`,' - ',`b`.`sede_nombre`,' - ',`c`.`dxe_nombre`) AS `dxe_nombre`,`c`.`dxe_estado` AS `dxe_estado` from ((`empresa` `a` join `empresa_sedes` `b` on(((`a`.`emp_id` = `b`.`sede_emp_id`) and (`b`.`sede_estado` = 1) and (`a`.`emp_estado` = 1)))) join `dep_empresa` `c` on(((`b`.`sede_id` = `c`.`dxe_sede_id`) and (`c`.`dxe_estado` = 1)))) order by `a`.`emp_nombre`,`b`.`sede_nombre`,`c`.`dxe_nombre`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cargos`
--
DROP TABLE IF EXISTS `v_cargos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cargos` AS select `d`.`car_id` AS `car_id`,concat(`a`.`emp_nombre`,' -',`b`.`sede_nombre`,' - ',`c`.`dxe_nombre`,' - ',`d`.`car_nombre`) AS `car_nombre`,`d`.`car_estado` AS `car_estado` from (((`empresa` `a` join `empresa_sedes` `b` on((`a`.`emp_id` = `b`.`sede_emp_id`))) join `dep_empresa` `c` on((`b`.`sede_id` = `c`.`dxe_sede_id`))) join `cargos` `d` on((`c`.`dxe_id` = `d`.`car_dxe_id`))) where ((`a`.`emp_estado` = 1) and (`b`.`sede_estado` = 1) and (`c`.`dxe_estado` = 1) and (`d`.`car_estado` = 1)) order by `a`.`emp_nombre`,`b`.`sede_nombre`,`c`.`dxe_nombre`,`d`.`car_nombre`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_depxdepal`
--
DROP TABLE IF EXISTS `v_depxdepal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_depxdepal` AS select `e`.`usu_id` AS `usu_id`,`a`.`dxd_axe_id` AS `dxd_axe_id`,`c`.`axe_nombre` AS `axe_nombre`,concat(`d`.`car_nombre`,' - ',`e`.`usu_corto`) AS `nom` from ((((`depxdepal` `a` join `dep_empresa` `b` on(((`a`.`dxd_dxe_id` = `b`.`dxe_id`) and (`b`.`dxe_estado` = 1) and (`a`.`dxd_estado` = 1)))) join `alianza_dep` `c` on(((`a`.`dxd_axe_id` = `c`.`axe_id`) and (`c`.`axe_estado` = 1)))) join `cargos` `d` on(((`d`.`car_dxe_id` = `b`.`dxe_id`) and (`d`.`car_estado` = 1)))) join `usuario` `e` on(((`e`.`usu_car_id` = `d`.`car_id`) and (`e`.`usu_estado` = 1))));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_dxdepto`
--
DROP TABLE IF EXISTS `v_dxdepto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dxdepto` AS select `a`.`dxd_id` AS `dxd_id`,concat(`c`.`sede_nombre`,' - ',`b`.`dxe_nombre`,' || ',`g`.`exa_nombre`,' - ',`f`.`axs_nombre`,' - ',`e`.`axe_nombre`) AS `nombre` from (((((`depxdepal` `a` join `dep_empresa` `b` on(((`a`.`dxd_dxe_id` = `b`.`dxe_id`) and (`b`.`dxe_estado` = 1)))) join `empresa_sedes` `c` on(((`b`.`dxe_sede_id` = `c`.`sede_id`) and (`c`.`sede_estado` = 1)))) join `alianza_dep` `e` on(((`a`.`dxd_axe_id` = `e`.`axe_id`) and (`e`.`axe_estado` = 1)))) join `alianza_sedes` `f` on(((`e`.`axe_axs_id` = `f`.`axs_id`) and (`f`.`axs_estado` = 1)))) join `alianza_emp` `g` on(((`f`.`axs_exa_id` = `g`.`exa_id`) and (`g`.`exa_estado` = 1))));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_empsede`
--
DROP TABLE IF EXISTS `v_empsede`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_empsede` AS select `a`.`sede_id` AS `sede_id`,concat(`b`.`emp_nombre`,' - ',`a`.`sede_nombre`) AS `sede_nombre`,`a`.`sede_estado` AS `sede_estado` from (`empresa_sedes` `a` join `empresa` `b` on(((`a`.`sede_emp_id` = `b`.`emp_id`) and (`b`.`emp_estado` = 1) and (`a`.`sede_estado` = 1)))) order by `b`.`emp_nombre`,`a`.`sede_nombre`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_frecuencia`
--
DROP TABLE IF EXISTS `v_frecuencia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_frecuencia` AS select `tramite_frecuencia`.`txf_id` AS `txf_id`,`tramite_frecuencia`.`txf_nombre` AS `txf_nombre`,`tramite_frecuencia`.`txf_estado` AS `txf_estado` from `tramite_frecuencia` where (`tramite_frecuencia`.`txf_estado` = 1) order by `tramite_frecuencia`.`txf_dias`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_obser`
--
DROP TABLE IF EXISTS `v_obser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_obser` AS select `a`.`txo_fechahora` AS `txo_fechahora`,`d`.`tra_id` AS `tra_id`,`a`.`txo_id` AS `txo_id`,`d`.`tra_consecutivo` AS `tra_consecutivo`,concat(`c`.`car_nombre`,' - ',`b`.`usu_corto`) AS `car_nombre`,`a`.`txo_observaciones` AS `txo_observaciones`,`a`.`txo_reales` AS `txo_reales` from (((`tramite_observaciones` `a` join `usuario` `b` on(((`a`.`txo_usu_id` = `b`.`usu_id`) and (`a`.`txo_estado` = 1) and (`b`.`usu_estado` = 1)))) join `cargos` `c` on(((`c`.`car_id` = `b`.`usu_car_id`) and (`c`.`car_estado` = 1)))) join `tramite` `d` on(((`d`.`tra_id` = `a`.`txo_tra_id`) and (`d`.`tra_estado` = 1))));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pasostramite`
--
DROP TABLE IF EXISTS `v_pasostramite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pasostramite` AS select `a`.`pxt_id` AS `pxt_id`,concat(`b`.`txt_nombre`,'  ',if((`a`.`pxt_txp_id` = 1),'PRE','POS'),'  ',`a`.`pxt_nombre`,'  ',convert(`a`.`pxt_tmpolimite` using utf8),' ','DIAS') AS `pxt_nombre`,`a`.`pxt_estado` AS `pxt_estado`,`a`.`pxt_txt_id` AS `pxt_txt_id` from (`tramite_pasos` `a` join `tramite_tipo` `b` on(((`a`.`pxt_txt_id` = `b`.`txt_id`) and (`b`.`txt_estado` = 1) and (`a`.`pxt_estado` = 1)))) order by `a`.`pxt_txp_id`,`a`.`pxt_id`;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_usuario`
--
DROP TABLE IF EXISTS `v_usuario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_usuario` AS select `b`.`usu_id` AS `usu_id`,`b`.`usu_car_id` AS `usu_car_id`,`a`.`car_dxe_id` AS `car_dxe_id`,`c`.`dxe_nombre` AS `dxe_nombre`,concat(`a`.`car_nombre`,' - ',`b`.`usu_corto`) AS `usu_corto`,`d`.`sede_id` AS `sede_id`,`d`.`sede_nombre` AS `sede_nombre` from (((`cargos` `a` join `usuario` `b` on(((`a`.`car_id` = `b`.`usu_car_id`) and (`a`.`car_estado` = 1) and (`b`.`usu_estado` = 1)))) join `dep_empresa` `c` on(((`a`.`car_dxe_id` = `c`.`dxe_id`) and (`c`.`dxe_estado` = 1) and (`a`.`car_estado` = 1)))) join `empresa_sedes` `d` on(((`c`.`dxe_sede_id` = `d`.`sede_id`) and (`d`.`sede_estado` = 1))));

-- --------------------------------------------------------

--
-- Estructura para la vista `v_vistausu`
--
DROP TABLE IF EXISTS `v_vistausu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_vistausu` AS select `a`.`usu_id` AS `usu_id`,concat(`a`.`usu_nombre`,' ',`a`.`usu_apel`) AS `usu_nombre`,`b`.`car_nombre` AS `car_nombre`,`c`.`per_nombre` AS `per_nombre`,`a`.`usu_act_id` AS `usu_act_id`,`a`.`usu_cedula` AS `usu_cedula`,`a`.`usu_user` AS `usu_user`,`a`.`usu_estado` AS `usu_estado`,`a`.`usu_emailper` AS `usu_emailper`,`a`.`usu_emailcor` AS `usu_emailcor`,`a`.`usu_dir` AS `usu_dir`,`a`.`usu_fijo` AS `usu_fijo`,`a`.`usu_celular` AS `usu_celular`,`a`.`usu_obs` AS `usu_obs`,`d`.`exc_nombre` AS `exc_nombre`,concat(`f`.`sede_nombre`,' - ',`e`.`dxe_nombre`,' - ',`b`.`car_nombre`) AS `cargo` from (((((`usuario` `a` join `cargos` `b` on(((`a`.`usu_car_id` = `b`.`car_id`) and (`a`.`usu_estado` = 1) and (`b`.`car_estado` = 1)))) join `perfil` `c` on(((`a`.`usu_per_id` = `c`.`per_id`) and (`c`.`per_estado` = 1)))) left join `empresa_cliente` `d` on(((`a`.`usu_exc_id` = `d`.`exc_id`) and (`d`.`exc_estado` = 1)))) join `dep_empresa` `e` on(((`e`.`dxe_id` = `b`.`car_dxe_id`) and (`e`.`dxe_estado` = 1)))) join `empresa_sedes` `f` on(((`f`.`sede_id` = `e`.`dxe_sede_id`) and (`f`.`sede_estado` = 1)))) order by `a`.`usu_nombre`;

--
-- Restricciones para tablas volcadas
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
