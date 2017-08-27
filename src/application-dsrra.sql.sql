set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.0.00.45'
,p_default_workspace_id=>29292541906282276
,p_default_application_id=>121
,p_default_owner=>'MOA'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 121 - DS Regression Results Analysis
--
-- Application Export:
--   Application:     121
--   Name:            DS Regression Results Analysis
--   Date and Time:   18:57 Sunday August 27, 2017
--   Exported By:     DSRRA
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.0.00.45
--   Instance ID:     102233015419743
--

-- Application Statistics:
--   Pages:                      7
--     Items:                   20
--     Processes:                6
--     Regions:                  9
--     Buttons:                  5
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              2
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       LOVs:                   3
--       Shortcuts:              1
--       Plug-ins:               3
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,121)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'MOA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'DS Regression Results Analysis')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DSRRA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'19C9E442A30E0AF72CC6D896CE4CF48063F46AB81E8E0EFC36B5D314069CD698'
,p_bookmark_checksum_function=>'SH1'
,p_max_session_length_sec=>172800
,p_on_max_session_timeout_url=>'172800'
,p_max_session_idle_sec=>172800
,p_on_max_idle_timeout_url=>'172800'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'dd/mm/yyyy'
,p_date_time_format=>'dd/mm/yyyy hh24:mi:ss'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(29336986421295685)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Data Stream Regression Results Analysis'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'DSRRA'
,p_last_upd_yyyymmddhh24miss=>'20170827185642'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29294544475294651)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29338167766296155)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29339541443348726)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Results'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-flask'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11244714114410)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Load'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-upload'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(38287295324228033)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Compare'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-line-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29336646432295563)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29336847580295651)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(-1483922058095932)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(-1480753932095930)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(404079000034)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29294210173294645)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29294332127294651)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29294496617294651)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(19176777139116)
,p_lov_name=>'ALGORITMOS'
,p_lov_query=>'.'||wwv_flow_api.id(19176777139116)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19444539139117)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'AMRules'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(19909499139118)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'FIMTDD'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20267033139118)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'IBLStreams'
,p_lov_return_value=>'I'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(20689483139118)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'SFNRegressor FIMTDD'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(73728553607161)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'SFNRegressor AMRules'
,p_lov_return_value=>'R'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7958867627627107)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'FIMTDD v14'
,p_lov_return_value=>'E'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21979019146378)
,p_lov_name=>'DATASETS'
,p_lov_query=>'.'||wwv_flow_api.id(21979019146378)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22290399146379)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Airlines'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22686949146379)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'YearPredictionMSD'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(23110157146379)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Synthetic'
,p_lov_return_value=>'S'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(20969242141779)
,p_lov_name=>'METODOS'
,p_lov_query=>'.'||wwv_flow_api.id(20969242141779)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21265152141779)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Prequential'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21646865141779)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Holdout'
,p_lov_return_value=>'H'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(29338008640296111)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18161775114424)
,p_parent_id=>wwv_flow_api.id(29338422783296161)
,p_short_name=>'Results Load'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(29338422783296161)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29294660199294714)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29294720219294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29294861999294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29294922849294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295049080294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295122108294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295277376294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295361381294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295446795294744)
,p_page_template_id=>wwv_flow_api.id(29294660199294714)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29295595594294875)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295618678294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295727204294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295829338294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29295930824294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296003222294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296168420294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296277532294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296364923294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296480174294878)
,p_page_template_id=>wwv_flow_api.id(29295595594294875)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29296576094294879)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296612249294879)
,p_page_template_id=>wwv_flow_api.id(29296576094294879)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296796172294879)
,p_page_template_id=>wwv_flow_api.id(29296576094294879)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29296893298294880)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29296900100294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297052550294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297189874294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297245319294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297342485294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297484035294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297594818294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297684319294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297723486294881)
,p_page_template_id=>wwv_flow_api.id(29296893298294880)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29297856526294881)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29297965787294889)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298049663294889)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298164683294889)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298205550294889)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298347962294889)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298415849294890)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298514750294890)
,p_page_template_id=>wwv_flow_api.id(29297856526294881)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29298639518294890)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298719926294899)
,p_page_template_id=>wwv_flow_api.id(29298639518294890)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298890767294899)
,p_page_template_id=>wwv_flow_api.id(29298639518294890)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29298976706294899)
,p_page_template_id=>wwv_flow_api.id(29298639518294890)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29299087934294899)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299198297294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299263333294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299345063294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299479487294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299530870294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299654845294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299764024294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29299856355294901)
,p_page_template_id=>wwv_flow_api.id(29299087934294899)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29299904597294901)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300056915294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300184341294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300249438294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300350061294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300498060294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300511600294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300688538294901)
,p_page_template_id=>wwv_flow_api.id(29299904597294901)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29300771356294924)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300840763294924)
,p_page_template_id=>wwv_flow_api.id(29300771356294924)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29300951241294924)
,p_page_template_id=>wwv_flow_api.id(29300771356294924)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29301057945294924)
,p_page_template_id=>wwv_flow_api.id(29300771356294924)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29331414389295435)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29331514169295442)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29331619589295442)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29301120865294970)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29301200448295037)
,p_plug_template_id=>wwv_flow_api.id(29301120865294970)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29302616143295141)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29302713921295142)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29302833794295142)
,p_plug_template_id=>wwv_flow_api.id(29302713921295142)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29302978088295142)
,p_plug_template_id=>wwv_flow_api.id(29302713921295142)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29303610613295146)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29303735995295146)
,p_plug_template_id=>wwv_flow_api.id(29303610613295146)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29303882813295146)
,p_plug_template_id=>wwv_flow_api.id(29303610613295146)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29307079329295150)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29307156837295150)
,p_plug_template_id=>wwv_flow_api.id(29307079329295150)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29307294573295150)
,p_plug_template_id=>wwv_flow_api.id(29307079329295150)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29309197655295183)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29309244621295183)
,p_plug_template_id=>wwv_flow_api.id(29309197655295183)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29309373520295187)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29309483590295187)
,p_plug_template_id=>wwv_flow_api.id(29309373520295187)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29310269092295211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29310568779295211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29310681637295223)
,p_plug_template_id=>wwv_flow_api.id(29310568779295211)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29310789640295223)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29310880396295224)
,p_plug_template_id=>wwv_flow_api.id(29310789640295223)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29310914991295224)
,p_plug_template_id=>wwv_flow_api.id(29310789640295223)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29312825733295231)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29312933548295232)
,p_plug_template_id=>wwv_flow_api.id(29312825733295231)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29313016588295232)
,p_plug_template_id=>wwv_flow_api.id(29312825733295231)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29314090391295236)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29314583908295236)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29314697331295236)
,p_plug_template_id=>wwv_flow_api.id(29314583908295236)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29322731663295324)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29324409892295358)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29326528498295365)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29327308935295366)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29328285764295373)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29328755381295373)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29328888144295388)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29328961532295388)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29329018445295388)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29329995441295389)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29330476287295399)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29315150091295249)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29315263648295258)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29316996107295266)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29319032672295289)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29319441473295289)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29319553961295292)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(29319553961295292)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29320860769295306)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29321830350295310)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29330954715295413)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29331095822295428)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29331183094295428)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29331291637295429)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29331395860295430)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(29332085485295454)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(29332225999295494)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(29332147207295474)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(29332629912295516)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072618901744759246
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(29299904597294901)
,p_default_dialog_template=>wwv_flow_api.id(29298639518294890)
,p_error_template=>wwv_flow_api.id(29296576094294879)
,p_printer_friendly_template=>wwv_flow_api.id(29299904597294901)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(29296576094294879)
,p_default_button_template=>wwv_flow_api.id(29331514169295442)
,p_default_region_template=>wwv_flow_api.id(29310789640295223)
,p_default_chart_template=>wwv_flow_api.id(29310789640295223)
,p_default_form_template=>wwv_flow_api.id(29310789640295223)
,p_default_reportr_template=>wwv_flow_api.id(29310789640295223)
,p_default_tabform_template=>wwv_flow_api.id(29310789640295223)
,p_default_wizard_template=>wwv_flow_api.id(29310789640295223)
,p_default_menur_template=>wwv_flow_api.id(29314090391295236)
,p_default_listr_template=>wwv_flow_api.id(29310789640295223)
,p_default_irr_template=>wwv_flow_api.id(29310269092295211)
,p_default_report_template=>wwv_flow_api.id(29319553961295292)
,p_default_label_template=>wwv_flow_api.id(29331095822295428)
,p_default_menu_template=>wwv_flow_api.id(29332085485295454)
,p_default_calendar_template=>wwv_flow_api.id(29332147207295474)
,p_default_list_template=>wwv_flow_api.id(29326528498295365)
,p_default_nav_list_template=>wwv_flow_api.id(29329995441295389)
,p_default_top_nav_list_temp=>wwv_flow_api.id(29329995441295389)
,p_default_side_nav_list_temp=>wwv_flow_api.id(29328961532295388)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(29302713921295142)
,p_default_dialogr_template=>wwv_flow_api.id(29302616143295141)
,p_default_option_label=>wwv_flow_api.id(29331095822295428)
,p_default_required_label=>wwv_flow_api.id(29331291637295429)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(29328888144295388)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#HAMMERJS_URL#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29332334545295500)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>true
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29332463276295509)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29332507920295509)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29301458848295122)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29301695337295140)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29301841247295140)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29303054915295146)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29303252416295146)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29303950549295146)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29304335591295146)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29304932521295150)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29305567220295150)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29305762722295150)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29306615601295150)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29308280468295183)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29309649356295188)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29313196910295232)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29313327950295232)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29313717016295235)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29314103667295236)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29314782378295236)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29315343564295258)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29315542898295262)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29317112858295266)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29317862074295267)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29318120914295280)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29318818862295289)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29319171722295289)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29319697615295292)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29319918432295292)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29320156058295292)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29320940903295310)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29322864548295338)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29323626076295355)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29324687601295358)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29325315459295358)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29325655431295363)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29326337871295363)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29327018051295366)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29329474980295389)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29330561979295399)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29331782844295442)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29332788972295554)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29332941201295554)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29333161957295554)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29333333760295554)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29333539222295554)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29333960857295554)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29334632971295556)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29335013787295556)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29335220859295558)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29335434594295558)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29335635851295558)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29335913784295558)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29336284004295560)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29301316523295060)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29301531435295134)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(29301458848295122)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29301745257295140)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(29301695337295140)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29301950823295140)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(29301841247295140)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302075513295141)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(29301458848295122)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302139857295141)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(29301695337295140)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302250923295141)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(29301458848295122)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302339037295141)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(29301695337295140)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302490010295141)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(29301458848295122)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29302592164295141)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29301120865294970)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(29301841247295140)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29303123412295146)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29302713921295142)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29303366727295146)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(29302713921295142)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(29303252416295146)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29303449418295146)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(29302713921295142)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29303592148295146)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(29302713921295142)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(29303252416295146)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304040297295146)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(29303950549295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304124816295146)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(29303950549295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304223884295146)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(29303950549295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304415223295149)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304534434295149)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304681598295149)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304730520295149)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(29303950549295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29304817219295149)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305076693295150)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305178468295150)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305254208295150)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305347012295150)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305426724295150)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305633869295150)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29305567220295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305824278295150)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29305937180295150)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29305567220295150)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306074491295150)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306178344295150)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306207374295150)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306314685295150)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306483355295150)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306574035295150)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306745790295150)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(29306615601295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306810473295150)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(29306615601295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29306961970295150)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29303610613295146)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307308457295155)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307473085295171)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307561246295171)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307675383295171)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307793505295171)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307824285295183)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29307954597295183)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308010012295183)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308151953295183)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308354822295183)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(29308280468295183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308443069295183)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(29308280468295183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308541970295183)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308620357295183)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308702487295183)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308858024295183)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29308978854295183)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29309010263295183)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29307079329295150)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29309579139295188)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29309764889295188)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(29309649356295188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29309806544295188)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(29309649356295188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29309904858295188)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29310008656295188)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29310189327295188)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29309373520295187)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(29309649356295188)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29310377578295211)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310269092295211)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29310409173295211)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310269092295211)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311006171295224)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311126007295224)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311281518295224)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311340901295224)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29304335591295146)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311489883295226)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311589339295226)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311643179295226)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311731532295230)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311800360295230)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29304932521295150)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29311993454295230)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29305567220295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312032299295230)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312139744295230)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29305567220295150)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312202101295230)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312394044295231)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312443030295231)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312530495295231)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29305762722295150)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312631241295231)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29312778352295231)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29310789640295223)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29303054915295146)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313237776295232)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(29313196910295232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313451050295235)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(29313327950295232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313596465295235)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313612319295235)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(29313327950295232)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313817841295235)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(29313717016295235)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29313974790295236)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29312825733295231)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(29313717016295235)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29314257736295236)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29314090391295236)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(29314103667295236)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29314314862295236)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29314090391295236)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29314490949295236)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29314090391295236)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(29314103667295236)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29314802678295236)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29314583908295236)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(29314782378295236)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29314935820295236)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29314583908295236)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(29314782378295236)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315048374295236)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29314583908295236)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315475071295258)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29315343564295258)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315622771295266)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315719734295266)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29315343564295258)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315804330295266)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29315966390295266)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29315343564295258)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316021216295266)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316137204295266)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316248023295266)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29315343564295258)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316315705295266)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29315343564295258)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316457086295266)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316543561295266)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316610191295266)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316708670295266)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29316800134295266)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29315263648295258)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317046579295266)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317231533295267)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29317112858295266)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317332015295267)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317405367295267)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29317112858295266)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317506712295267)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317632935295267)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29317112858295266)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317768362295267)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29317980074295267)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29317862074295267)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318001365295280)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29317862074295267)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318232881295289)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29318120914295280)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318393460295289)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29318120914295280)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318408101295289)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(29317862074295267)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318523034295289)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318651072295289)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29317112858295266)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318723469295289)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29318974692295289)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29316996107295266)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(29318818862295289)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29319226574295289)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29319032672295289)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(29319171722295289)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29319390228295289)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29319032672295289)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(29319171722295289)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29319743448295292)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(29319697615295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29319898956295292)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(29319697615295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320054066295292)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(29319918432295292)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320204049295292)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(29320156058295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320396022295292)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(29320156058295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320451093295306)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(29320156058295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320566238295306)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(29319918432295292)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320679475295306)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29320705301295306)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29319553961295292)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(29320156058295292)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321035052295310)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321129435295310)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321286258295310)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321345793295310)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321482653295310)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321587468295310)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321637822295310)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321786364295310)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29320860769295306)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29321930277295310)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322054573295310)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322192618295310)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322299740295310)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322363171295310)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29315542898295262)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322417248295310)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322558780295310)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322698930295310)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29321830350295310)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29320940903295310)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29322976755295339)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323001145295343)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323184125295343)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323241361295355)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323338104295355)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323498760295355)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323529599295355)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323748672295355)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29323626076295355)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323841016295355)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29323626076295355)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29323963284295355)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324021452295355)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29323626076295355)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324106360295355)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324251496295355)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29323626076295355)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324329166295355)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29322731663295324)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29323626076295355)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324556072295358)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324717866295358)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29324687601295358)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324881997295358)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29324992014295358)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29324687601295358)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325016543295358)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325122221295358)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29324687601295358)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325277767295358)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325445857295358)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325516788295358)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325764626295363)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29325655431295363)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325862348295363)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29325655431295363)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29325941249295363)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326032072295363)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326180417295363)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29324687601295358)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326249902295363)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326411628295364)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29324409892295358)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(29326337871295363)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326605961295366)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326711785295366)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326821930295366)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29326958731295366)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327197615295366)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(29327018051295366)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327265758295366)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29326528498295365)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(29327018051295366)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327400861295373)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327518107295373)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327629191295373)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327728715295373)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327827564295373)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29327924342295373)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328003738295373)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328173275295373)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29327308935295366)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328383086295373)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29328285764295373)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328423429295373)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29328285764295373)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328581988295373)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29328285764295373)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29328691739295373)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29328285764295373)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329172092295389)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(29325655431295363)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329268918295389)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(29322864548295338)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329361506295389)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(29325655431295363)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329501075295389)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(29329474980295389)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329620035295389)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329798096295389)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(29325315459295358)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29329858182295389)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(29329018445295388)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(29329474980295389)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330082523295399)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29329995441295389)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330185934295399)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29329995441295389)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330219806295399)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29329995441295389)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330363393295399)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29329995441295389)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330678436295399)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29330476287295399)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(29330561979295399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330707794295399)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29330476287295399)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(29330561979295399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29330825368295399)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29330476287295399)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(29330561979295399)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29331809127295442)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29331619589295442)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(29331782844295442)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29331970451295443)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(29331619589295442)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(29331782844295442)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29332864253295554)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(29332788972295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333004262295554)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(29332941201295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333254290295554)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(29333161957295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333404236295554)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(29333333760295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333617291295554)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(29333539222295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333722641295554)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(29332941201295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29333885422295554)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(29333161957295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334076227295554)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(29333960857295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334176864295556)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(29333960857295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334237972295556)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(29333960857295554)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334388918295556)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(29332788972295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334482095295556)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(29333539222295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334541453295556)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(29333333760295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334792189295556)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(29334632971295556)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334813894295556)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(29332788972295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29334904265295556)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(29332788972295554)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29335125586295558)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(29335013787295556)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29335387464295558)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(29335220859295558)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29335566522295558)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(29335434594295558)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29335794864295558)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(29335635851295558)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29335828073295558)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(29335635851295558)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29336021621295559)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(29335913784295558)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29336189697295559)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(29335220859295558)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29336328093295560)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(29336284004295560)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29336467083295560)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29336561149295560)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(29336284004295560)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(38126024764200269)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(29336986421295685)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_masked_field
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(8800688161973946217)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.MASKED_FIELD'
,p_display_name=>'Masked Field'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.MASKED_FIELD'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#jquery.maskedinput#MIN#.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_masked_field (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable',
'    l_input_mask  apex_application_page_items.attribute_01%type := p_item.attribute_01;',
'    l_placeholder apex_application_page_items.attribute_01%type := nvl(p_item.attribute_02, ''_'');',
'',
'    l_name        varchar2(30);',
'    l_result      apex_plugin.t_page_item_render_result;',
'begin',
'    if p_is_readonly or p_is_printer_friendly then',
'        -- emit hidden field if necessary',
'        apex_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        -- emit display span with the value',
'        apex_plugin_util.print_display_only (',
'            p_item_name        => p_item.name,',
'            p_display_value    => p_value,',
'            p_show_line_breaks => false,',
'            p_escape           => true,',
'            p_attributes       => p_item.element_attributes );',
'    else',
'        -- Because the page item saves state, we have to call get_input_name_for_page_item',
'        -- which generates the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := apex_plugin.get_input_name_for_page_item(false);',
'        sys.htp.prn (',
'            ''<input type="text" '' ||',
'            apex_plugin_util.get_element_attributes( p_item, l_name, ''masked_text_field'' ) ||',
'            ''value="'' || apex_escape.html_attribute( p_value )|| ''" size="'' || p_item.element_width || ''" ''||',
'            ''maxlength="''||p_item.element_max_length||''" />'' );',
'',
'        -- Initialize the mask for the page item when the page has been rendered.',
'        -- apex_javascript.add_value and add_attribute are used to make sure that',
'        -- the values are properly escaped.   ',
'        apex_javascript.add_onload_code (',
'            p_code => ''$( "#'' || apex_escape.js_literal( apex_escape.css_selector( p_item.name ), null ) || ''" ).mask(''||',
'                      apex_javascript.add_value( l_input_mask ) ||',
'                      ''{'' || apex_javascript.add_attribute( ''placeholder'', l_placeholder, true, false ) || ''});'' );',
'',
'        -- Tell APEX that this field is navigable',
'        l_result.is_navigable := true;',
'    end if;',
'    return l_result;',
'end render_masked_field;',
'',
'',
'function validate_masked_field (',
'    p_item   in     apex_plugin.t_page_item,',
'    p_plugin in     apex_plugin.t_plugin,',
'    p_value  in     varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    -- It''s better to have a named variable instead of using the generic ones,',
'    -- makes the code more readable',
'    l_input_mask       apex_application_page_items.attribute_01%type := p_item.attribute_01;',
'    ',
'    l_allowed_char_pos pls_integer;',
'    l_allowed_char     varchar2(1);',
'    l_current_char     varchar2(1);',
'    l_is_valid         boolean;',
'    l_result           apex_plugin.t_page_item_validation_result;    ',
'begin',
'    if p_value is null then return null; end if;',
'    ',
'    -- The first check is to make sure that the entered value is really as long',
'    -- as the input mask. If the input mask contains the ? for optional input,',
'    -- we just use the values before that, otherwise the entered value has to',
'    -- match the length of the input mask.',
'    if l_input_mask like ''%?%'' then',
'        l_is_valid := (length(p_value) >= instr(l_input_mask, ''?'')-1 and length(p_value) < length(l_input_mask));',
'    else',
'        l_is_valid := (length(p_value) = length(l_input_mask));',
'    end if;',
'',
'    if l_is_valid then',
'        -- Check for each char in the entered value that it complies with the',
'        -- corresponding mask definition in the input mask',
'        l_allowed_char_pos := 0;',
'        for i in 1 .. length(p_value)',
'        loop',
'            l_allowed_char_pos := l_allowed_char_pos+1;',
'            -- skip the "?" mask definition',
'            if substr(l_input_mask, l_allowed_char_pos, 1) = ''?'' then',
'                l_allowed_char_pos := l_allowed_char_pos+1;',
'            end if;',
'            l_allowed_char := substr(l_input_mask, l_allowed_char_pos, 1);',
'            l_current_char := substr(p_value, i, 1);',
'            l_is_valid     :=',
'                case l_allowed_char',
'                  when ''a'' /* A-Z,a-z */     then (l_current_char between ''A'' and ''Z'' or l_current_char between ''a'' and ''z'')',
'                  when ''9'' /* 0-9 */         then (l_current_char between ''0'' and ''9'')',
'                  when ''*'' /* A-Z,a-z,0-9 */ then (l_current_char between ''A'' and ''Z'' or l_current_char between ''a'' and ''z'' or l_current_char between ''0'' and ''9'')',
'                  else     /* filler */           (l_current_char = l_allowed_char)',
'                end;',
'            -- if there is an error we can terminate the loop immediately ',
'            if not l_is_valid then exit; end if;',
'        end loop;',
'    end if;',
'    -- Do we have to return an error message?',
'    if not l_is_valid then',
'        l_result.message := ''Value doesn''''t comply with the input mask!'';',
'        -- We can leave l_result.display_location blank, in that case the default',
'        -- setting of the plug-in will be used -> that should be the default case',
'    end if;',
'    return l_result;',
'end validate_masked_field;'))
,p_api_version=>1
,p_render_function=>'render_masked_field'
,p_validation_function=>'validate_masked_field'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:SOURCE:ELEMENT:WIDTH:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	This plug-in allows a user to easily enter fixed width, formatted data (e.g. dates, phone numbers, SSN).</p>',
'<p>',
'	A mask is defined as a format made up of literals and mask definitions. Any character not in the definitions list below is considered a mask literal and can&rsquo;t be modified by the user.<br />',
'	<br />',
'	For example a mask of &quot;(999) 999-9999&quot; with a placeholder of &quot;#&quot; will be displayed to the user as &quot;(###) ###-####&quot;. As the user types in the value, the hashes will be replaced by the numbers entered and the parenthesis,'
||' space, and dash will remain untouched. See help text of<br />',
'	attribute &quot;Input Mask&quot; for valid mask definitions.</p>',
'<p>',
'	The plug-in is based on the jQuery Masked Input Field v1.4.0 plug-in (<a href="http://digitalbush.com/projects/masked-input-plugin/">http://digitalbush.com/projects/masked-input-plugin/</a>)</p>'))
,p_version_identifier=>'5.0'
,p_about_url=>'http://apex.oracle.com/plugins/'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8800689767214976143)
,p_plugin_id=>wwv_flow_api.id(8800688161973946217)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Input Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'(999) 999-9999'
,p_display_length=>40
,p_max_length=>40
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An input mask is defined by a format made up of mask literals and mask definitions. Any character not in the definitions list',
'below is considered a mask literal and can�t be modified by the user. For example a mask of "(999) 999-9999" with a placeholder of "#" will be displayed to the user as "(###) ###-####". As the user types in the value, the hashes will be replaced by t'
||'he numbers entered and the parenthesis, space, and dash will remain untouched.',
' ',
'The following mask definitions are predefined:',
'<ul>',
'<li>a - Represents an alpha character (A-Z,a-z)</li>',
'<li>9 - Represents a numeric character (0-9)</li>',
'<li>* - Represents an alphanumeric character (A-Z,a-z,0-9)</li>',
'<li>? - Anything listed after "?" within the mask is considered optional user input. A common example for this is phone number + optional extension. The mask for that would be "(999) 999-9999? x999999"</li>',
'</ul>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8800690462843984284)
,p_plugin_id=>wwv_flow_api.id(8800688161973946217)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Placeholder'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'_'
,p_display_length=>1
,p_max_length=>1
,p_is_translatable=>false
,p_help_text=>'The placeholder is displayed for all enterable characters (mask definitions) in the input field.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202020206A5175657279204D61736B656420496E70757420506C7567696E0A20202020436F70797269676874202863292032303037202D2032303134204A6F7368204275736820286469676974616C627573682E636F6D290A202020204C696365';
wwv_flow_api.g_varchar2_table(2) := '6E73656420756E64657220746865204D4954206C6963656E73652028687474703A2F2F6469676974616C627573682E636F6D2F70726F6A656374732F6D61736B65642D696E7075742D706C7567696E2F236C6963656E7365290A2020202056657273696F';
wwv_flow_api.g_varchar2_table(3) := '6E3A20312E342E300A2A2F0A2166756E6374696F6E28666163746F727929207B0A202020202266756E6374696F6E22203D3D20747970656F6620646566696E6520262620646566696E652E616D64203F20646566696E65285B20226A717565727922205D';
wwv_flow_api.g_varchar2_table(4) := '2C20666163746F727929203A20666163746F727928226F626A65637422203D3D20747970656F66206578706F727473203F207265717569726528226A71756572792229203A206A5175657279293B0A7D2866756E6374696F6E282429207B0A2020202076';
wwv_flow_api.g_varchar2_table(5) := '617220636172657454696D656F757449642C207561203D206E6176696761746F722E757365724167656E742C206950686F6E65203D202F6970686F6E652F692E74657374287561292C206368726F6D65203D202F6368726F6D652F692E74657374287561';
wwv_flow_api.g_varchar2_table(6) := '292C20616E64726F6964203D202F616E64726F69642F692E74657374287561293B0A20202020242E6D61736B203D207B0A2020202020202020646566696E6974696F6E733A207B0A2020202020202020202020202239223A20225B302D395D222C0A2020';
wwv_flow_api.g_varchar2_table(7) := '20202020202020202020613A20225B412D5A612D7A5D222C0A202020202020202020202020222A223A20225B412D5A612D7A302D395D220A20202020202020207D2C0A20202020202020206175746F636C6561723A2021302C0A20202020202020206461';
wwv_flow_api.g_varchar2_table(8) := '74614E616D653A20227261774D61736B466E222C0A2020202020202020706C616365686F6C6465723A20225F220A202020207D2C20242E666E2E657874656E64287B0A202020202020202063617265743A2066756E6374696F6E28626567696E2C20656E';
wwv_flow_api.g_varchar2_table(9) := '6429207B0A2020202020202020202020207661722072616E67653B0A202020202020202020202020696620283020213D3D20746869732E6C656E6774682026262021746869732E697328223A68696464656E2229292072657475726E20226E756D626572';
wwv_flow_api.g_varchar2_table(10) := '22203D3D20747970656F6620626567696E203F2028656E64203D20226E756D62657222203D3D20747970656F6620656E64203F20656E64203A20626567696E2C200A202020202020202020202020746869732E656163682866756E6374696F6E2829207B';
wwv_flow_api.g_varchar2_table(11) := '0A20202020202020202020202020202020746869732E73657453656C656374696F6E52616E6765203F20746869732E73657453656C656374696F6E52616E676528626567696E2C20656E6429203A20746869732E6372656174655465787452616E676520';
wwv_flow_api.g_varchar2_table(12) := '2626202872616E6765203D20746869732E6372656174655465787452616E676528292C200A2020202020202020202020202020202072616E67652E636F6C6C61707365282130292C2072616E67652E6D6F7665456E642822636861726163746572222C20';
wwv_flow_api.g_varchar2_table(13) := '656E64292C2072616E67652E6D6F766553746172742822636861726163746572222C20626567696E292C200A2020202020202020202020202020202072616E67652E73656C6563742829293B0A2020202020202020202020207D2929203A202874686973';
wwv_flow_api.g_varchar2_table(14) := '5B305D2E73657453656C656374696F6E52616E6765203F2028626567696E203D20746869735B305D2E73656C656374696F6E53746172742C20656E64203D20746869735B305D2E73656C656374696F6E456E6429203A20646F63756D656E742E73656C65';
wwv_flow_api.g_varchar2_table(15) := '6374696F6E20262620646F63756D656E742E73656C656374696F6E2E63726561746552616E6765202626202872616E6765203D20646F63756D656E742E73656C656374696F6E2E63726561746552616E676528292C200A20202020202020202020202062';
wwv_flow_api.g_varchar2_table(16) := '6567696E203D2030202D2072616E67652E6475706C696361746528292E6D6F766553746172742822636861726163746572222C202D316535292C20656E64203D20626567696E202B2072616E67652E746578742E6C656E677468292C200A202020202020';
wwv_flow_api.g_varchar2_table(17) := '2020202020207B0A20202020202020202020202020202020626567696E3A20626567696E2C0A20202020202020202020202020202020656E643A20656E640A2020202020202020202020207D293B0A20202020202020207D2C0A2020202020202020756E';
wwv_flow_api.g_varchar2_table(18) := '6D61736B3A2066756E6374696F6E2829207B0A20202020202020202020202072657475726E20746869732E747269676765722822756E6D61736B22293B0A20202020202020207D2C0A20202020202020206D61736B3A2066756E6374696F6E286D61736B';
wwv_flow_api.g_varchar2_table(19) := '2C2073657474696E677329207B0A20202020202020202020202076617220696E7075742C20646566732C2074657374732C207061727469616C506F736974696F6E2C2066697273744E6F6E4D61736B506F732C206C61737452657175697265644E6F6E4D';
wwv_flow_api.g_varchar2_table(20) := '61736B506F732C206C656E2C206F6C6456616C3B0A20202020202020202020202069662028216D61736B20262620746869732E6C656E677468203E203029207B0A20202020202020202020202020202020696E707574203D202428746869735B305D293B';
wwv_flow_api.g_varchar2_table(21) := '0A2020202020202020202020202020202076617220666E203D20696E7075742E6461746128242E6D61736B2E646174614E616D65293B0A2020202020202020202020202020202072657475726E20666E203F20666E2829203A20766F696420303B0A2020';
wwv_flow_api.g_varchar2_table(22) := '202020202020202020207D0A20202020202020202020202072657475726E2073657474696E6773203D20242E657874656E64287B0A202020202020202020202020202020206175746F636C6561723A20242E6D61736B2E6175746F636C6561722C0A2020';
wwv_flow_api.g_varchar2_table(23) := '2020202020202020202020202020706C616365686F6C6465723A20242E6D61736B2E706C616365686F6C6465722C0A20202020202020202020202020202020636F6D706C657465643A206E756C6C0A2020202020202020202020207D2C2073657474696E';
wwv_flow_api.g_varchar2_table(24) := '6773292C2064656673203D20242E6D61736B2E646566696E6974696F6E732C207465737473203D205B5D2C207061727469616C506F736974696F6E203D206C656E203D206D61736B2E6C656E6774682C200A20202020202020202020202066697273744E';
wwv_flow_api.g_varchar2_table(25) := '6F6E4D61736B506F73203D206E756C6C2C20242E65616368286D61736B2E73706C6974282222292C2066756E6374696F6E28692C206329207B0A20202020202020202020202020202020223F22203D3D2063203F20286C656E2D2D2C207061727469616C';
wwv_flow_api.g_varchar2_table(26) := '506F736974696F6E203D206929203A20646566735B635D203F202874657374732E70757368286E65772052656745787028646566735B635D29292C200A202020202020202020202020202020206E756C6C203D3D3D2066697273744E6F6E4D61736B506F';
wwv_flow_api.g_varchar2_table(27) := '73202626202866697273744E6F6E4D61736B506F73203D2074657374732E6C656E677468202D2031292C207061727469616C506F736974696F6E203E206920262620286C61737452657175697265644E6F6E4D61736B506F73203D2074657374732E6C65';
wwv_flow_api.g_varchar2_table(28) := '6E677468202D20312929203A2074657374732E70757368286E756C6C293B0A2020202020202020202020207D292C20746869732E747269676765722822756E6D61736B22292E656163682866756E6374696F6E2829207B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '2020202066756E6374696F6E2074727946697265436F6D706C657465642829207B0A20202020202020202020202020202020202020206966202873657474696E67732E636F6D706C6574656429207B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(30) := '20202020666F7220287661722069203D2066697273744E6F6E4D61736B506F733B206C61737452657175697265644E6F6E4D61736B506F73203E3D20693B20692B2B29206966202874657374735B695D202626206275666665725B695D203D3D3D206765';
wwv_flow_api.g_varchar2_table(31) := '74506C616365686F6C646572286929292072657475726E3B0A20202020202020202020202020202020202020202020202073657474696E67732E636F6D706C657465642E63616C6C28696E707574293B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '207D0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E20676574506C616365686F6C646572286929207B0A202020202020202020202020202020202020202072657475726E2073657474696E67';
wwv_flow_api.g_varchar2_table(33) := '732E706C616365686F6C6465722E6368617241742869203C2073657474696E67732E706C616365686F6C6465722E6C656E677468203F2069203A2030293B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E';
wwv_flow_api.g_varchar2_table(34) := '6374696F6E207365656B4E65787428706F7329207B0A2020202020202020202020202020202020202020666F7220283B2B2B706F73203C206C656E202626202174657374735B706F735D3B2029203B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(35) := '72657475726E20706F733B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E207365656B5072657628706F7329207B0A2020202020202020202020202020202020202020666F7220283B2D2D70';
wwv_flow_api.g_varchar2_table(36) := '6F73203E3D2030202626202174657374735B706F735D3B2029203B0A202020202020202020202020202020202020202072657475726E20706F733B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E637469';
wwv_flow_api.g_varchar2_table(37) := '6F6E2073686966744C28626567696E2C20656E6429207B0A202020202020202020202020202020202020202076617220692C206A3B0A202020202020202020202020202020202020202069662028212830203E20626567696E2929207B0A202020202020';
wwv_flow_api.g_varchar2_table(38) := '202020202020202020202020202020202020666F72202869203D20626567696E2C206A203D207365656B4E65787428656E64293B206C656E203E20693B20692B2B29206966202874657374735B695D29207B0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(39) := '20202020202020202020206966202821286C656E203E206A2026262074657374735B695D2E74657374286275666665725B6A5D29292920627265616B3B0A202020202020202020202020202020202020202020202020202020206275666665725B695D20';
wwv_flow_api.g_varchar2_table(40) := '3D206275666665725B6A5D2C206275666665725B6A5D203D20676574506C616365686F6C646572286A292C206A203D207365656B4E657874286A293B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(41) := '2020202020202020202020777269746542756666657228292C20696E7075742E6361726574284D6174682E6D61782866697273744E6F6E4D61736B506F732C20626567696E29293B0A20202020202020202020202020202020202020207D0A2020202020';
wwv_flow_api.g_varchar2_table(42) := '20202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E2073686966745228706F7329207B0A202020202020202020202020202020202020202076617220692C20632C206A2C20743B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(43) := '2020202020202020666F72202869203D20706F732C2063203D20676574506C616365686F6C64657228706F73293B206C656E203E20693B20692B2B29206966202874657374735B695D29207B0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(44) := '20696620286A203D207365656B4E6578742869292C2074203D206275666665725B695D2C206275666665725B695D203D20632C2021286C656E203E206A2026262074657374735B6A5D2E74657374287429292920627265616B3B0A202020202020202020';
wwv_flow_api.g_varchar2_table(45) := '20202020202020202020202020202063203D20743B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E20616E64726F6964496E70757445';
wwv_flow_api.g_varchar2_table(46) := '76656E742829207B0A20202020202020202020202020202020202020207661722063757256616C203D20696E7075742E76616C28292C20706F73203D20696E7075742E636172657428293B0A202020202020202020202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(47) := '63757256616C2E6C656E677468203C206F6C6456616C2E6C656E67746829207B0A202020202020202020202020202020202020202020202020666F722028636865636B56616C282130293B20706F732E626567696E203E2030202626202174657374735B';
wwv_flow_api.g_varchar2_table(48) := '706F732E626567696E202D20315D3B202920706F732E626567696E2D2D3B0A2020202020202020202020202020202020202020202020206966202830203D3D3D20706F732E626567696E2920666F7220283B706F732E626567696E203C2066697273744E';
wwv_flow_api.g_varchar2_table(49) := '6F6E4D61736B506F73202626202174657374735B706F732E626567696E5D3B202920706F732E626567696E2B2B3B0A202020202020202020202020202020202020202020202020696E7075742E636172657428706F732E626567696E2C20706F732E6265';
wwv_flow_api.g_varchar2_table(50) := '67696E293B0A20202020202020202020202020202020202020207D20656C7365207B0A202020202020202020202020202020202020202020202020666F722028636865636B56616C282130293B20706F732E626567696E203C206C656E20262620217465';
wwv_flow_api.g_varchar2_table(51) := '7374735B706F732E626567696E5D3B202920706F732E626567696E2B2B3B0A202020202020202020202020202020202020202020202020696E7075742E636172657428706F732E626567696E2C20706F732E626567696E293B0A20202020202020202020';
wwv_flow_api.g_varchar2_table(52) := '202020202020202020207D0A202020202020202020202020202020202020202074727946697265436F6D706C6574656428293B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E20626C757245';
wwv_flow_api.g_varchar2_table(53) := '76656E742829207B0A2020202020202020202020202020202020202020636865636B56616C28292C20696E7075742E76616C282920213D20666F6375735465787420262620696E7075742E6368616E676528293B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(54) := '207D0A2020202020202020202020202020202066756E6374696F6E206B6579646F776E4576656E74286529207B0A20202020202020202020202020202020202020206966202821696E7075742E70726F702822726561646F6E6C79222929207B0A202020';
wwv_flow_api.g_varchar2_table(55) := '20202020202020202020202020202020202020202076617220706F732C20626567696E2C20656E642C206B203D20652E7768696368207C7C20652E6B6579436F64653B0A2020202020202020202020202020202020202020202020206F6C6456616C203D';
wwv_flow_api.g_varchar2_table(56) := '20696E7075742E76616C28292C2038203D3D3D206B207C7C203436203D3D3D206B207C7C206950686F6E6520262620313237203D3D3D206B203F2028706F73203D20696E7075742E636172657428292C200A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(57) := '202020202020626567696E203D20706F732E626567696E2C20656E64203D20706F732E656E642C20656E64202D20626567696E203D3D3D20302026262028626567696E203D20343620213D3D206B203F207365656B5072657628626567696E29203A2065';
wwv_flow_api.g_varchar2_table(58) := '6E64203D207365656B4E65787428626567696E202D2031292C200A202020202020202020202020202020202020202020202020656E64203D203436203D3D3D206B203F207365656B4E65787428656E6429203A20656E64292C20636C6561724275666665';
wwv_flow_api.g_varchar2_table(59) := '7228626567696E2C20656E64292C2073686966744C28626567696E2C20656E64202D2031292C200A202020202020202020202020202020202020202020202020652E70726576656E7444656661756C74282929203A203133203D3D3D206B203F20626C75';
wwv_flow_api.g_varchar2_table(60) := '724576656E742E63616C6C28746869732C206529203A203237203D3D3D206B2026262028696E7075742E76616C28666F63757354657874292C200A202020202020202020202020202020202020202020202020696E7075742E636172657428302C206368';
wwv_flow_api.g_varchar2_table(61) := '65636B56616C2829292C20652E70726576656E7444656661756C742829293B0A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E206B6579';
wwv_flow_api.g_varchar2_table(62) := '70726573734576656E74286529207B0A20202020202020202020202020202020202020206966202821696E7075742E70726F702822726561646F6E6C79222929207B0A20202020202020202020202020202020202020202020202076617220702C20632C';
wwv_flow_api.g_varchar2_table(63) := '206E6578742C206B203D20652E7768696368207C7C20652E6B6579436F64652C20706F73203D20696E7075742E636172657428293B0A202020202020202020202020202020202020202020202020696620282128652E6374726C4B6579207C7C20652E61';
wwv_flow_api.g_varchar2_table(64) := '6C744B6579207C7C20652E6D6574614B6579207C7C203332203E206B29202626206B20262620313320213D3D206B29207B0A2020202020202020202020202020202020202020202020202020202069662028706F732E656E64202D20706F732E62656769';
wwv_flow_api.g_varchar2_table(65) := '6E20213D3D20302026262028636C65617242756666657228706F732E626567696E2C20706F732E656E64292C2073686966744C28706F732E626567696E2C20706F732E656E64202D203129292C200A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(66) := '2020202020202070203D207365656B4E65787428706F732E626567696E202D2031292C206C656E203E2070202626202863203D20537472696E672E66726F6D43686172436F6465286B292C2074657374735B705D2E746573742863292929207B0A202020';
wwv_flow_api.g_varchar2_table(67) := '2020202020202020202020202020202020202020202020202020202020696620287368696674522870292C206275666665725B705D203D20632C20777269746542756666657228292C206E657874203D207365656B4E6578742870292C20616E64726F69';
wwv_flow_api.g_varchar2_table(68) := '6429207B0A2020202020202020202020202020202020202020202020202020202020202020202020207661722070726F7879203D2066756E6374696F6E2829207B0A20202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(69) := '202020202020242E70726F787928242E666E2E63617265742C20696E7075742C206E6578742928293B0A2020202020202020202020202020202020202020202020202020202020202020202020207D3B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(70) := '202020202020202020202020202020202073657454696D656F75742870726F78792C2030293B0A20202020202020202020202020202020202020202020202020202020202020207D20656C736520696E7075742E6361726574286E657874293B0A202020';
wwv_flow_api.g_varchar2_table(71) := '2020202020202020202020202020202020202020202020202020202020706F732E626567696E203C3D206C61737452657175697265644E6F6E4D61736B506F732026262074727946697265436F6D706C6574656428293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(72) := '202020202020202020202020202020207D0A20202020202020202020202020202020202020202020202020202020652E70726576656E7444656661756C7428293B0A2020202020202020202020202020202020202020202020207D0A2020202020202020';
wwv_flow_api.g_varchar2_table(73) := '2020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E20636C6561724275666665722873746172742C20656E6429207B0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(74) := '20202076617220693B0A2020202020202020202020202020202020202020666F72202869203D2073746172743B20656E64203E2069202626206C656E203E20693B20692B2B292074657374735B695D20262620286275666665725B695D203D2067657450';
wwv_flow_api.g_varchar2_table(75) := '6C616365686F6C646572286929293B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E2077726974654275666665722829207B0A2020202020202020202020202020202020202020696E707574';
wwv_flow_api.g_varchar2_table(76) := '2E76616C286275666665722E6A6F696E28222229293B0A202020202020202020202020202020207D0A2020202020202020202020202020202066756E6374696F6E20636865636B56616C28616C6C6F7729207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(77) := '2020202076617220692C20632C20706F732C2074657374203D20696E7075742E76616C28292C206C6173744D61746368203D202D313B0A2020202020202020202020202020202020202020666F72202869203D20302C20706F73203D20303B206C656E20';
wwv_flow_api.g_varchar2_table(78) := '3E20693B20692B2B29206966202874657374735B695D29207B0A202020202020202020202020202020202020202020202020666F7220286275666665725B695D203D20676574506C616365686F6C6465722869293B20706F732B2B203C20746573742E6C';
wwv_flow_api.g_varchar2_table(79) := '656E6774683B2029206966202863203D20746573742E63686172417428706F73202D2031292C200A20202020202020202020202020202020202020202020202074657374735B695D2E7465737428632929207B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(80) := '2020202020202020202020206275666665725B695D203D20632C206C6173744D61746368203D20693B0A20202020202020202020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(81) := '207D0A20202020202020202020202020202020202020202020202069662028706F73203E20746573742E6C656E67746829207B0A20202020202020202020202020202020202020202020202020202020636C6561724275666665722869202B20312C206C';
wwv_flow_api.g_varchar2_table(82) := '656E293B0A20202020202020202020202020202020202020202020202020202020627265616B3B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D20656C7365206275666665725B';
wwv_flow_api.g_varchar2_table(83) := '695D203D3D3D20746573742E63686172417428706F732920262620706F732B2B2C207061727469616C506F736974696F6E203E206920262620286C6173744D61746368203D2069293B0A202020202020202020202020202020202020202072657475726E';
wwv_flow_api.g_varchar2_table(84) := '20616C6C6F77203F2077726974654275666665722829203A207061727469616C506F736974696F6E203E206C6173744D61746368202B2031203F2073657474696E67732E6175746F636C656172207C7C206275666665722E6A6F696E28222229203D3D3D';
wwv_flow_api.g_varchar2_table(85) := '2064656661756C74427566666572203F2028696E7075742E76616C282920262620696E7075742E76616C282222292C200A2020202020202020202020202020202020202020636C65617242756666657228302C206C656E2929203A207772697465427566';
wwv_flow_api.g_varchar2_table(86) := '6665722829203A2028777269746542756666657228292C20696E7075742E76616C28696E7075742E76616C28292E737562737472696E6728302C206C6173744D61746368202B20312929292C200A20202020202020202020202020202020202020207061';
wwv_flow_api.g_varchar2_table(87) := '727469616C506F736974696F6E203F2069203A2066697273744E6F6E4D61736B506F733B0A202020202020202020202020202020207D0A2020202020202020202020202020202076617220696E707574203D20242874686973292C20627566666572203D';
wwv_flow_api.g_varchar2_table(88) := '20242E6D6170286D61736B2E73706C6974282222292C2066756E6374696F6E28632C206929207B0A202020202020202020202020202020202020202072657475726E20223F2220213D2063203F20646566735B635D203F20676574506C616365686F6C64';
wwv_flow_api.g_varchar2_table(89) := '6572286929203A2063203A20766F696420303B0A202020202020202020202020202020207D292C2064656661756C74427566666572203D206275666665722E6A6F696E282222292C20666F63757354657874203D20696E7075742E76616C28293B0A2020';
wwv_flow_api.g_varchar2_table(90) := '2020202020202020202020202020696E7075742E6461746128242E6D61736B2E646174614E616D652C2066756E6374696F6E2829207B0A202020202020202020202020202020202020202072657475726E20242E6D6170286275666665722C2066756E63';
wwv_flow_api.g_varchar2_table(91) := '74696F6E28632C206929207B0A20202020202020202020202020202020202020202020202072657475726E2074657374735B695D202626206320213D20676574506C616365686F6C646572286929203F2063203A206E756C6C3B0A202020202020202020';
wwv_flow_api.g_varchar2_table(92) := '20202020202020202020207D292E6A6F696E282222293B0A202020202020202020202020202020207D292C20696E7075742E6F6E652822756E6D61736B222C2066756E6374696F6E2829207B0A2020202020202020202020202020202020202020696E70';
wwv_flow_api.g_varchar2_table(93) := '75742E6F666628222E6D61736B22292E72656D6F76654461746128242E6D61736B2E646174614E616D65293B0A202020202020202020202020202020207D292E6F6E2822666F6375732E6D61736B222C2066756E6374696F6E2829207B0A202020202020';
wwv_flow_api.g_varchar2_table(94) := '20202020202020202020202020206966202821696E7075742E70726F702822726561646F6E6C79222929207B0A202020202020202020202020202020202020202020202020636C65617254696D656F757428636172657454696D656F75744964293B0A20';
wwv_flow_api.g_varchar2_table(95) := '202020202020202020202020202020202020202020202076617220706F733B0A202020202020202020202020202020202020202020202020666F63757354657874203D20696E7075742E76616C28292C20706F73203D20636865636B56616C28292C2063';
wwv_flow_api.g_varchar2_table(96) := '6172657454696D656F75744964203D2073657454696D656F75742866756E6374696F6E2829207B0A20202020202020202020202020202020202020202020202020202020777269746542756666657228292C20706F73203D3D206D61736B2E7265706C61';
wwv_flow_api.g_varchar2_table(97) := '636528223F222C202222292E6C656E677468203F20696E7075742E636172657428302C20706F7329203A20696E7075742E636172657428706F73293B0A2020202020202020202020202020202020202020202020207D2C203130293B0A20202020202020';
wwv_flow_api.g_varchar2_table(98) := '202020202020202020202020207D0A202020202020202020202020202020207D292E6F6E2822626C75722E6D61736B222C20626C75724576656E74292E6F6E28226B6579646F776E2E6D61736B222C206B6579646F776E4576656E74292E6F6E28226B65';
wwv_flow_api.g_varchar2_table(99) := '7970726573732E6D61736B222C206B657970726573734576656E74292E6F6E2822696E7075742E6D61736B2070617374652E6D61736B222C2066756E6374696F6E2829207B0A2020202020202020202020202020202020202020696E7075742E70726F70';
wwv_flow_api.g_varchar2_table(100) := '2822726561646F6E6C792229207C7C2073657454696D656F75742866756E6374696F6E2829207B0A20202020202020202020202020202020202020202020202076617220706F73203D20636865636B56616C282130293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(101) := '202020202020202020202020696E7075742E636172657428706F73292C2074727946697265436F6D706C6574656428293B0A20202020202020202020202020202020202020207D2C2030293B0A202020202020202020202020202020207D292C20636872';
wwv_flow_api.g_varchar2_table(102) := '6F6D6520262620616E64726F696420262620696E7075742E6F66662822696E7075742E6D61736B22292E6F6E2822696E7075742E6D61736B222C20616E64726F6964496E7075744576656E74292C200A2020202020202020202020202020202063686563';
wwv_flow_api.g_varchar2_table(103) := '6B56616C28293B0A2020202020202020202020207D293B0A20202020202020207D0A202020207D293B0A7D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(85415397253841693)
,p_plugin_id=>wwv_flow_api.id(8800688161973946217)
,p_file_name=>'jquery.maskedinput.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202020206A5175657279204D61736B656420496E70757420506C7567696E0A20202020436F70797269676874202863292032303037202D2032303134204A6F7368204275736820286469676974616C627573682E636F6D290A202020204C696365';
wwv_flow_api.g_varchar2_table(2) := '6E73656420756E64657220746865204D4954206C6963656E73652028687474703A2F2F6469676974616C627573682E636F6D2F70726F6A656374732F6D61736B65642D696E7075742D706C7567696E2F236C6963656E7365290A2020202056657273696F';
wwv_flow_api.g_varchar2_table(3) := '6E3A20312E342E300A2A2F0A2166756E6374696F6E2861297B2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E65285B226A7175657279225D2C61293A6128226F626A656374223D3D74797065';
wwv_flow_api.g_varchar2_table(4) := '6F66206578706F7274733F7265717569726528226A717565727922293A6A5175657279297D2866756E6374696F6E2861297B76617220622C633D6E6176696761746F722E757365724167656E742C643D2F6970686F6E652F692E746573742863292C653D';
wwv_flow_api.g_varchar2_table(5) := '2F6368726F6D652F692E746573742863292C663D2F616E64726F69642F692E746573742863293B612E6D61736B3D7B646566696E6974696F6E733A7B393A225B302D395D222C613A225B412D5A612D7A5D222C222A223A225B412D5A612D7A302D395D22';
wwv_flow_api.g_varchar2_table(6) := '7D2C6175746F636C6561723A21302C646174614E616D653A227261774D61736B466E222C706C616365686F6C6465723A225F227D2C612E666E2E657874656E64287B63617265743A66756E6374696F6E28612C62297B76617220633B69662830213D3D74';
wwv_flow_api.g_varchar2_table(7) := '6869732E6C656E677468262621746869732E697328223A68696464656E22292972657475726E226E756D626572223D3D747970656F6620613F28623D226E756D626572223D3D747970656F6620623F623A612C746869732E656163682866756E6374696F';
wwv_flow_api.g_varchar2_table(8) := '6E28297B746869732E73657453656C656374696F6E52616E67653F746869732E73657453656C656374696F6E52616E676528612C62293A746869732E6372656174655465787452616E6765262628633D746869732E6372656174655465787452616E6765';
wwv_flow_api.g_varchar2_table(9) := '28292C632E636F6C6C61707365282130292C632E6D6F7665456E642822636861726163746572222C62292C632E6D6F766553746172742822636861726163746572222C61292C632E73656C6563742829297D29293A28746869735B305D2E73657453656C';
wwv_flow_api.g_varchar2_table(10) := '656374696F6E52616E67653F28613D746869735B305D2E73656C656374696F6E53746172742C623D746869735B305D2E73656C656374696F6E456E64293A646F63756D656E742E73656C656374696F6E2626646F63756D656E742E73656C656374696F6E';
wwv_flow_api.g_varchar2_table(11) := '2E63726561746552616E6765262628633D646F63756D656E742E73656C656374696F6E2E63726561746552616E676528292C613D302D632E6475706C696361746528292E6D6F766553746172742822636861726163746572222C2D316535292C623D612B';
wwv_flow_api.g_varchar2_table(12) := '632E746578742E6C656E677468292C7B626567696E3A612C656E643A627D297D2C756E6D61736B3A66756E6374696F6E28297B72657475726E20746869732E747269676765722822756E6D61736B22297D2C6D61736B3A66756E6374696F6E28632C6729';
wwv_flow_api.g_varchar2_table(13) := '7B76617220682C692C6A2C6B2C6C2C6D2C6E2C6F3B69662821632626746869732E6C656E6774683E30297B683D6128746869735B305D293B76617220703D682E6461746128612E6D61736B2E646174614E616D65293B72657475726E20703F7028293A76';
wwv_flow_api.g_varchar2_table(14) := '6F696420307D72657475726E20673D612E657874656E64287B6175746F636C6561723A612E6D61736B2E6175746F636C6561722C706C616365686F6C6465723A612E6D61736B2E706C616365686F6C6465722C636F6D706C657465643A6E756C6C7D2C67';
wwv_flow_api.g_varchar2_table(15) := '292C693D612E6D61736B2E646566696E6974696F6E732C6A3D5B5D2C6B3D6E3D632E6C656E6774682C6C3D6E756C6C2C612E6561636828632E73706C6974282222292C66756E6374696F6E28612C62297B223F223D3D623F286E2D2D2C6B3D61293A695B';
wwv_flow_api.g_varchar2_table(16) := '625D3F286A2E70757368286E65772052656745787028695B625D29292C6E756C6C3D3D3D6C2626286C3D6A2E6C656E6774682D31292C6B3E612626286D3D6A2E6C656E6774682D3129293A6A2E70757368286E756C6C297D292C746869732E7472696767';
wwv_flow_api.g_varchar2_table(17) := '65722822756E6D61736B22292E656163682866756E6374696F6E28297B66756E6374696F6E206828297B696628672E636F6D706C65746564297B666F722876617220613D6C3B6D3E3D613B612B2B296966286A5B615D2626435B615D3D3D3D7028612929';
wwv_flow_api.g_varchar2_table(18) := '72657475726E3B672E636F6D706C657465642E63616C6C2842297D7D66756E6374696F6E20702861297B72657475726E20672E706C616365686F6C6465722E63686172417428613C672E706C616365686F6C6465722E6C656E6774683F613A30297D6675';
wwv_flow_api.g_varchar2_table(19) := '6E6374696F6E20712861297B666F72283B2B2B613C6E2626216A5B615D3B293B72657475726E20617D66756E6374696F6E20722861297B666F72283B2D2D613E3D302626216A5B615D3B293B72657475726E20617D66756E6374696F6E207328612C6229';
wwv_flow_api.g_varchar2_table(20) := '7B76617220632C643B6966282128303E6129297B666F7228633D612C643D712862293B6E3E633B632B2B296966286A5B635D297B69662821286E3E6426266A5B635D2E7465737428435B645D292929627265616B3B435B635D3D435B645D2C435B645D3D';
wwv_flow_api.g_varchar2_table(21) := '702864292C643D712864297D7A28292C422E6361726574284D6174682E6D6178286C2C6129297D7D66756E6374696F6E20742861297B76617220622C632C642C653B666F7228623D612C633D702861293B6E3E623B622B2B296966286A5B625D297B6966';
wwv_flow_api.g_varchar2_table(22) := '28643D712862292C653D435B625D2C435B625D3D632C21286E3E6426266A5B645D2E746573742865292929627265616B3B633D657D7D66756E6374696F6E207528297B76617220613D422E76616C28292C623D422E636172657428293B696628612E6C65';
wwv_flow_api.g_varchar2_table(23) := '6E6774683C6F2E6C656E677468297B666F722841282130293B622E626567696E3E302626216A5B622E626567696E2D315D3B29622E626567696E2D2D3B696628303D3D3D622E626567696E29666F72283B622E626567696E3C6C2626216A5B622E626567';
wwv_flow_api.g_varchar2_table(24) := '696E5D3B29622E626567696E2B2B3B422E636172657428622E626567696E2C622E626567696E297D656C73657B666F722841282130293B622E626567696E3C6E2626216A5B622E626567696E5D3B29622E626567696E2B2B3B422E636172657428622E62';
wwv_flow_api.g_varchar2_table(25) := '6567696E2C622E626567696E297D6828297D66756E6374696F6E207628297B4128292C422E76616C2829213D452626422E6368616E676528297D66756E6374696F6E20772861297B69662821422E70726F702822726561646F6E6C792229297B76617220';
wwv_flow_api.g_varchar2_table(26) := '622C632C652C663D612E77686963687C7C612E6B6579436F64653B6F3D422E76616C28292C383D3D3D667C7C34363D3D3D667C7C6426263132373D3D3D663F28623D422E636172657428292C633D622E626567696E2C653D622E656E642C652D633D3D3D';
wwv_flow_api.g_varchar2_table(27) := '30262628633D3436213D3D663F722863293A653D7128632D31292C653D34363D3D3D663F712865293A65292C7928632C65292C7328632C652D31292C612E70726576656E7444656661756C742829293A31333D3D3D663F762E63616C6C28746869732C61';
wwv_flow_api.g_varchar2_table(28) := '293A32373D3D3D66262628422E76616C2845292C422E636172657428302C412829292C612E70726576656E7444656661756C742829297D7D66756E6374696F6E20782862297B69662821422E70726F702822726561646F6E6C792229297B76617220632C';
wwv_flow_api.g_varchar2_table(29) := '642C652C673D622E77686963687C7C622E6B6579436F64652C693D422E636172657428293B6966282128622E6374726C4B65797C7C622E616C744B65797C7C622E6D6574614B65797C7C33323E672926266726263133213D3D67297B696628692E656E64';
wwv_flow_api.g_varchar2_table(30) := '2D692E626567696E213D3D302626287928692E626567696E2C692E656E64292C7328692E626567696E2C692E656E642D3129292C633D7128692E626567696E2D31292C6E3E63262628643D537472696E672E66726F6D43686172436F64652867292C6A5B';
wwv_flow_api.g_varchar2_table(31) := '635D2E7465737428642929297B696628742863292C435B635D3D642C7A28292C653D712863292C66297B766172206B3D66756E6374696F6E28297B612E70726F787928612E666E2E63617265742C422C652928297D3B73657454696D656F7574286B2C30';
wwv_flow_api.g_varchar2_table(32) := '297D656C736520422E63617265742865293B692E626567696E3C3D6D26266828297D622E70726576656E7444656661756C7428297D7D7D66756E6374696F6E207928612C62297B76617220633B666F7228633D613B623E6326266E3E633B632B2B296A5B';
wwv_flow_api.g_varchar2_table(33) := '635D262628435B635D3D70286329297D66756E6374696F6E207A28297B422E76616C28432E6A6F696E28222229297D66756E6374696F6E20412861297B76617220622C632C642C653D422E76616C28292C663D2D313B666F7228623D302C643D303B6E3E';
wwv_flow_api.g_varchar2_table(34) := '623B622B2B296966286A5B625D297B666F7228435B625D3D702862293B642B2B3C652E6C656E6774683B29696628633D652E63686172417428642D31292C6A5B625D2E74657374286329297B435B625D3D632C663D623B627265616B7D696628643E652E';
wwv_flow_api.g_varchar2_table(35) := '6C656E677468297B7928622B312C6E293B627265616B7D7D656C736520435B625D3D3D3D652E6368617241742864292626642B2B2C6B3E62262628663D62293B72657475726E20613F7A28293A6B3E662B313F672E6175746F636C6561727C7C432E6A6F';
wwv_flow_api.g_varchar2_table(36) := '696E282222293D3D3D443F28422E76616C28292626422E76616C282222292C7928302C6E29293A7A28293A287A28292C422E76616C28422E76616C28292E737562737472696E6728302C662B312929292C6B3F623A6C7D76617220423D61287468697329';
wwv_flow_api.g_varchar2_table(37) := '2C433D612E6D617028632E73706C6974282222292C66756E6374696F6E28612C62297B72657475726E223F22213D613F695B615D3F702862293A613A766F696420307D292C443D432E6A6F696E282222292C453D422E76616C28293B422E646174612861';
wwv_flow_api.g_varchar2_table(38) := '2E6D61736B2E646174614E616D652C66756E6374696F6E28297B72657475726E20612E6D617028432C66756E6374696F6E28612C62297B72657475726E206A5B625D262661213D702862293F613A6E756C6C7D292E6A6F696E282222297D292C422E6F6E';
wwv_flow_api.g_varchar2_table(39) := '652822756E6D61736B222C66756E6374696F6E28297B422E6F666628222E6D61736B22292E72656D6F76654461746128612E6D61736B2E646174614E616D65297D292E6F6E2822666F6375732E6D61736B222C66756E6374696F6E28297B69662821422E';
wwv_flow_api.g_varchar2_table(40) := '70726F702822726561646F6E6C792229297B636C65617254696D656F75742862293B76617220613B453D422E76616C28292C613D4128292C623D73657454696D656F75742866756E6374696F6E28297B7A28292C613D3D632E7265706C61636528223F22';
wwv_flow_api.g_varchar2_table(41) := '2C2222292E6C656E6774683F422E636172657428302C61293A422E63617265742861297D2C3130297D7D292E6F6E2822626C75722E6D61736B222C76292E6F6E28226B6579646F776E2E6D61736B222C77292E6F6E28226B657970726573732E6D61736B';
wwv_flow_api.g_varchar2_table(42) := '222C78292E6F6E2822696E7075742E6D61736B2070617374652E6D61736B222C66756E6374696F6E28297B422E70726F702822726561646F6E6C7922297C7C73657454696D656F75742866756E6374696F6E28297B76617220613D41282130293B422E63';
wwv_flow_api.g_varchar2_table(43) := '617265742861292C6828297D2C30297D292C652626662626422E6F66662822696E7075742E6D61736B22292E6F6E2822696E7075742E6D61736B222C75292C4128297D297D7D297D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(85415719961842277)
,p_plugin_id=>wwv_flow_api.id(8800688161973946217)
,p_file_name=>'jquery.maskedinput.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/de_danielh_pace
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(11200778490151125315)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DE.DANIELH.PACE'
,p_display_name=>'Pace Progress Indicator'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','DE.DANIELH.PACE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * Pace JS Functions',
' * Version: 1.0 (05.08.2015)',
' * Author:  Daniel Hochleitner',
' *-------------------------------------',
'*/',
'FUNCTION render_pace(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                     p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  l_theme  VARCHAR2(500) := p_dynamic_action.attribute_01;',
'  l_color  VARCHAR2(100) := p_dynamic_action.attribute_02;',
'  l_result apex_plugin.t_dynamic_action_render_result;',
'  --',
'BEGIN',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'  END IF;',
'  -- Pace CSS (Color + Theme)',
'  apex_css.add_file(p_name      => l_theme,',
'                    p_directory => p_plugin.file_prefix || ''themes/'' ||',
'                                   l_color || ''/'');',
'',
'  --',
'  -- Pace JS',
'  apex_javascript.add_library(p_name           => ''pace.min'',',
'                              p_directory      => p_plugin.file_prefix,',
'                              p_version        => NULL,',
'                              p_skip_extension => FALSE);',
'  -- Add JS Imline Code',
'  apex_javascript.add_inline_code(p_code => ''paceOptions = {elements: false,restartOnPushState: false,restartOnRequestAfter: false}'');',
'  --',
'  l_result.javascript_function := ''function(){null}'';',
'  l_result.attribute_01        := l_theme;',
'  l_result.attribute_02        := l_color;',
'  --',
'  RETURN l_result;',
'  --',
'END render_pace;'))
,p_api_version=>1
,p_render_function=>'render_pace'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Dynamic Action Plugin using OpenSource JS framework "pace.js" to display nice loading indicators.',
'Use this DA plugin for example on "page load" to display the different loading indicators.',
'You can choose between several colors and themes.',
'Original from: http://github.hubspot.com/pace/docs/welcome/'))
,p_version_identifier=>'1.0'
,p_about_url=>'http://blog.danielh.de/'
,p_files_version=>142
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11144060146408441527)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'pace-theme-center-circle'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose the default theme for the loading indicator.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144051720347277473)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>10
,p_display_value=>'pace-theme-barber-shop'
,p_return_value=>'pace-theme-barber-shop'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144069572775444485)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>20
,p_display_value=>'pace-theme-bounce'
,p_return_value=>'pace-theme-bounce'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144052925513278688)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>30
,p_display_value=>'pace-theme-center-atom'
,p_return_value=>'pace-theme-center-atom'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144086989304445783)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>40
,p_display_value=>'pace-theme-center-circle'
,p_return_value=>'pace-theme-center-circle'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144087857682446439)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>50
,p_display_value=>'pace-theme-center-radar'
,p_return_value=>'pace-theme-center-radar'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144089668611447157)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>60
,p_display_value=>'pace-theme-corner-indicator'
,p_return_value=>'pace-theme-corner-indicator'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11144090133597447776)
,p_plugin_attribute_id=>wwv_flow_api.id(11144060146408441527)
,p_display_sequence=>70
,p_display_value=>'pace-theme-loading-bar'
,p_return_value=>'pace-theme-loading-bar'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11200854949749322700)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'blue'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose the default color of the loading indicator.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200855258554323476)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>10
,p_display_value=>'Blue'
,p_return_value=>'blue'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200855712039324244)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>20
,p_display_value=>'Green'
,p_return_value=>'green'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200856116260325038)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>30
,p_display_value=>'Orange'
,p_return_value=>'orange'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200856718024325930)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>40
,p_display_value=>'Pink'
,p_return_value=>'pink'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200857397250327392)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>50
,p_display_value=>'Purple'
,p_return_value=>'purple'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200857731726327777)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>60
,p_display_value=>'Red'
,p_return_value=>'red'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11200858165802328863)
,p_plugin_attribute_id=>wwv_flow_api.id(11200854949749322700)
,p_display_sequence=>70
,p_display_value=>'Yellow'
,p_return_value=>'yellow'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A21207061636520302E372E31202A2F0A2866756E6374696F6E28297B76617220612C622C632C642C652C662C672C682C692C6A2C6B2C6C2C6D2C6E2C6F2C702C712C722C732C742C752C762C772C782C792C7A2C412C422C432C442C452C462C472C';
wwv_flow_api.g_varchar2_table(2) := '482C492C4A2C4B2C4C2C4D2C4E2C4F2C502C512C522C532C542C552C562C572C583D5B5D2E736C6963652C593D7B7D2E6861734F776E50726F70657274792C5A3D66756E6374696F6E28612C62297B66756E6374696F6E206328297B746869732E636F6E';
wwv_flow_api.g_varchar2_table(3) := '7374727563746F723D617D666F7228766172206420696E206229592E63616C6C28622C6429262628615B645D3D625B645D293B72657475726E20632E70726F746F747970653D622E70726F746F747970652C612E70726F746F747970653D6E657720632C';
wwv_flow_api.g_varchar2_table(4) := '612E5F5F73757065725F5F3D622E70726F746F747970652C617D2C243D5B5D2E696E6465784F667C7C66756E6374696F6E2861297B666F722876617220623D302C633D746869732E6C656E6774683B633E623B622B2B296966286220696E207468697326';
wwv_flow_api.g_varchar2_table(5) := '26746869735B625D3D3D3D612972657475726E20623B72657475726E2D317D3B666F7228753D7B6361746368757054696D653A3130302C696E697469616C526174653A2E30332C6D696E54696D653A3235302C67686F737454696D653A3130302C6D6178';
wwv_flow_api.g_varchar2_table(6) := '50726F67726573735065724672616D653A32302C65617365466163746F723A312E32352C73746172744F6E506167654C6F61643A21302C726573746172744F6E5075736853746174653A21302C726573746172744F6E5265717565737441667465723A35';
wwv_flow_api.g_varchar2_table(7) := '30302C7461726765743A22626F6479222C656C656D656E74733A7B636865636B496E74657276616C3A3130302C73656C6563746F72733A5B22626F6479225D7D2C6576656E744C61673A7B6D696E53616D706C65733A31302C73616D706C65436F756E74';
wwv_flow_api.g_varchar2_table(8) := '3A332C6C61675468726573686F6C643A337D2C616A61783A7B747261636B4D6574686F64733A5B22474554225D2C747261636B576562536F636B6574733A21302C69676E6F726555524C733A5B5D7D7D2C433D66756E6374696F6E28297B76617220613B';
wwv_flow_api.g_varchar2_table(9) := '72657475726E206E756C6C213D28613D22756E646566696E656422213D747970656F6620706572666F726D616E636526266E756C6C213D3D706572666F726D616E636526262266756E6374696F6E223D3D747970656F6620706572666F726D616E63652E';
wwv_flow_api.g_varchar2_table(10) := '6E6F773F706572666F726D616E63652E6E6F7728293A766F69642030293F613A2B6E657720446174657D2C453D77696E646F772E72657175657374416E696D6174696F6E4672616D657C7C77696E646F772E6D6F7A52657175657374416E696D6174696F';
wwv_flow_api.g_varchar2_table(11) := '6E4672616D657C7C77696E646F772E7765626B697452657175657374416E696D6174696F6E4672616D657C7C77696E646F772E6D7352657175657374416E696D6174696F6E4672616D652C743D77696E646F772E63616E63656C416E696D6174696F6E46';
wwv_flow_api.g_varchar2_table(12) := '72616D657C7C77696E646F772E6D6F7A43616E63656C416E696D6174696F6E4672616D652C6E756C6C3D3D45262628453D66756E6374696F6E2861297B72657475726E2073657454696D656F757428612C3530297D2C743D66756E6374696F6E2861297B';
wwv_flow_api.g_varchar2_table(13) := '72657475726E20636C65617254696D656F75742861297D292C473D66756E6374696F6E2861297B76617220622C633B72657475726E20623D4328292C28633D66756E6374696F6E28297B76617220643B72657475726E20643D4328292D622C643E3D3333';
wwv_flow_api.g_varchar2_table(14) := '3F28623D4328292C6128642C66756E6374696F6E28297B72657475726E20452863297D29293A73657454696D656F757428632C33332D64297D2928297D2C463D66756E6374696F6E28297B76617220612C622C633B72657475726E20633D617267756D65';
wwv_flow_api.g_varchar2_table(15) := '6E74735B305D2C623D617267756D656E74735B315D2C613D333C3D617267756D656E74732E6C656E6774683F582E63616C6C28617267756D656E74732C32293A5B5D2C2266756E6374696F6E223D3D747970656F6620635B625D3F635B625D2E6170706C';
wwv_flow_api.g_varchar2_table(16) := '7928632C61293A635B625D7D2C763D66756E6374696F6E28297B76617220612C622C632C642C652C662C673B666F7228623D617267756D656E74735B305D2C643D323C3D617267756D656E74732E6C656E6774683F582E63616C6C28617267756D656E74';
wwv_flow_api.g_varchar2_table(17) := '732C31293A5B5D2C663D302C673D642E6C656E6774683B673E663B662B2B29696628633D645B665D29666F72286120696E206329592E63616C6C28632C6129262628653D635B615D2C6E756C6C213D625B615D2626226F626A656374223D3D747970656F';
wwv_flow_api.g_varchar2_table(18) := '6620625B615D26266E756C6C213D652626226F626A656374223D3D747970656F6620653F7628625B615D2C65293A625B615D3D65293B72657475726E20627D2C713D66756E6374696F6E2861297B76617220622C632C642C652C663B666F7228633D623D';
wwv_flow_api.g_varchar2_table(19) := '302C653D302C663D612E6C656E6774683B663E653B652B2B29643D615B655D2C632B3D4D6174682E6162732864292C622B2B3B72657475726E20632F627D2C783D66756E6374696F6E28612C62297B76617220632C642C653B6966286E756C6C3D3D6126';
wwv_flow_api.g_varchar2_table(20) := '2628613D226F7074696F6E7322292C6E756C6C3D3D62262628623D2130292C653D646F63756D656E742E717565727953656C6563746F7228225B646174612D706163652D222B612B225D2229297B696628633D652E676574417474726962757465282264';
wwv_flow_api.g_varchar2_table(21) := '6174612D706163652D222B61292C21622972657475726E20633B7472797B72657475726E204A534F4E2E70617273652863297D63617463682866297B72657475726E20643D662C22756E646566696E656422213D747970656F6620636F6E736F6C652626';
wwv_flow_api.g_varchar2_table(22) := '6E756C6C213D3D636F6E736F6C653F636F6E736F6C652E6572726F7228224572726F722070617273696E6720696E6C696E652070616365206F7074696F6E73222C64293A766F696420307D7D7D2C673D66756E6374696F6E28297B66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(23) := '6128297B7D72657475726E20612E70726F746F747970652E6F6E3D66756E6374696F6E28612C622C632C64297B76617220653B72657475726E206E756C6C3D3D64262628643D2131292C6E756C6C3D3D746869732E62696E64696E677326262874686973';
wwv_flow_api.g_varchar2_table(24) := '2E62696E64696E67733D7B7D292C6E756C6C3D3D28653D746869732E62696E64696E6773295B615D262628655B615D3D5B5D292C746869732E62696E64696E67735B615D2E70757368287B68616E646C65723A622C6374783A632C6F6E63653A647D297D';
wwv_flow_api.g_varchar2_table(25) := '2C612E70726F746F747970652E6F6E63653D66756E6374696F6E28612C622C63297B72657475726E20746869732E6F6E28612C622C632C2130297D2C612E70726F746F747970652E6F66663D66756E6374696F6E28612C62297B76617220632C642C653B';
wwv_flow_api.g_varchar2_table(26) := '6966286E756C6C213D286E756C6C213D28643D746869732E62696E64696E6773293F645B615D3A766F6964203029297B6966286E756C6C3D3D622972657475726E2064656C65746520746869732E62696E64696E67735B615D3B666F7228633D302C653D';
wwv_flow_api.g_varchar2_table(27) := '5B5D3B633C746869732E62696E64696E67735B615D2E6C656E6774683B29652E7075736828746869732E62696E64696E67735B615D5B635D2E68616E646C65723D3D3D623F746869732E62696E64696E67735B615D2E73706C69636528632C31293A632B';
wwv_flow_api.g_varchar2_table(28) := '2B293B72657475726E20657D7D2C612E70726F746F747970652E747269676765723D66756E6374696F6E28297B76617220612C622C632C642C652C662C672C682C693B696628633D617267756D656E74735B305D2C613D323C3D617267756D656E74732E';
wwv_flow_api.g_varchar2_table(29) := '6C656E6774683F582E63616C6C28617267756D656E74732C31293A5B5D2C6E756C6C213D28673D746869732E62696E64696E6773293F675B635D3A766F69642030297B666F7228653D302C693D5B5D3B653C746869732E62696E64696E67735B635D2E6C';
wwv_flow_api.g_varchar2_table(30) := '656E6774683B29683D746869732E62696E64696E67735B635D5B655D2C643D682E68616E646C65722C623D682E6374782C663D682E6F6E63652C642E6170706C79286E756C6C213D623F623A746869732C61292C692E7075736828663F746869732E6269';
wwv_flow_api.g_varchar2_table(31) := '6E64696E67735B635D2E73706C69636528652C31293A652B2B293B72657475726E20697D7D2C617D28292C6A3D77696E646F772E506163657C7C7B7D2C77696E646F772E506163653D6A2C76286A2C672E70726F746F74797065292C443D6A2E6F707469';
wwv_flow_api.g_varchar2_table(32) := '6F6E733D76287B7D2C752C77696E646F772E706163654F7074696F6E732C782829292C553D5B22616A6178222C22646F63756D656E74222C226576656E744C6167222C22656C656D656E7473225D2C513D302C533D552E6C656E6774683B533E513B512B';
wwv_flow_api.g_varchar2_table(33) := '2B294B3D555B515D2C445B4B5D3D3D3D2130262628445B4B5D3D755B4B5D293B693D66756E6374696F6E2861297B66756E6374696F6E206228297B72657475726E20563D622E5F5F73757065725F5F2E636F6E7374727563746F722E6170706C79287468';
wwv_flow_api.g_varchar2_table(34) := '69732C617267756D656E7473297D72657475726E205A28622C61292C627D284572726F72292C623D66756E6374696F6E28297B66756E6374696F6E206128297B746869732E70726F67726573733D307D72657475726E20612E70726F746F747970652E67';
wwv_flow_api.g_varchar2_table(35) := '6574456C656D656E743D66756E6374696F6E28297B76617220613B6966286E756C6C3D3D746869732E656C297B696628613D646F63756D656E742E717565727953656C6563746F7228442E746172676574292C2161297468726F77206E657720693B7468';
wwv_flow_api.g_varchar2_table(36) := '69732E656C3D646F63756D656E742E637265617465456C656D656E74282264697622292C746869732E656C2E636C6173734E616D653D227061636520706163652D616374697665222C646F63756D656E742E626F64792E636C6173734E616D653D646F63';
wwv_flow_api.g_varchar2_table(37) := '756D656E742E626F64792E636C6173734E616D652E7265706C616365282F706163652D646F6E652F672C2222292C646F63756D656E742E626F64792E636C6173734E616D652B3D2220706163652D72756E6E696E67222C746869732E656C2E696E6E6572';
wwv_flow_api.g_varchar2_table(38) := '48544D4C3D273C64697620636C6173733D22706163652D70726F6772657373223E5C6E20203C64697620636C6173733D22706163652D70726F67726573732D696E6E6572223E3C2F6469763E5C6E3C2F6469763E5C6E3C64697620636C6173733D227061';
wwv_flow_api.g_varchar2_table(39) := '63652D6163746976697479223E3C2F6469763E272C6E756C6C213D612E66697273744368696C643F612E696E736572744265666F726528746869732E656C2C612E66697273744368696C64293A612E617070656E644368696C6428746869732E656C297D';
wwv_flow_api.g_varchar2_table(40) := '72657475726E20746869732E656C7D2C612E70726F746F747970652E66696E6973683D66756E6374696F6E28297B76617220613B72657475726E20613D746869732E676574456C656D656E7428292C612E636C6173734E616D653D612E636C6173734E61';
wwv_flow_api.g_varchar2_table(41) := '6D652E7265706C6163652822706163652D616374697665222C2222292C612E636C6173734E616D652B3D2220706163652D696E616374697665222C646F63756D656E742E626F64792E636C6173734E616D653D646F63756D656E742E626F64792E636C61';
wwv_flow_api.g_varchar2_table(42) := '73734E616D652E7265706C6163652822706163652D72756E6E696E67222C2222292C646F63756D656E742E626F64792E636C6173734E616D652B3D2220706163652D646F6E65227D2C612E70726F746F747970652E7570646174653D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(43) := '2861297B72657475726E20746869732E70726F67726573733D612C746869732E72656E64657228297D2C612E70726F746F747970652E64657374726F793D66756E6374696F6E28297B7472797B746869732E676574456C656D656E7428292E706172656E';
wwv_flow_api.g_varchar2_table(44) := '744E6F64652E72656D6F76654368696C6428746869732E676574456C656D656E742829297D63617463682861297B693D617D72657475726E20746869732E656C3D766F696420307D2C612E70726F746F747970652E72656E6465723D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(45) := '28297B76617220612C623B72657475726E206E756C6C3D3D646F63756D656E742E717565727953656C6563746F7228442E746172676574293F21313A28613D746869732E676574456C656D656E7428292C612E6368696C6472656E5B305D2E7374796C65';
wwv_flow_api.g_varchar2_table(46) := '2E77696474683D22222B746869732E70726F67726573732B2225222C2821746869732E6C61737452656E646572656450726F67726573737C7C746869732E6C61737452656E646572656450726F67726573737C30213D3D746869732E70726F6772657373';
wwv_flow_api.g_varchar2_table(47) := '7C3029262628612E6368696C6472656E5B305D2E7365744174747269627574652822646174612D70726F67726573732D74657874222C22222B28307C746869732E70726F6772657373292B222522292C746869732E70726F67726573733E3D3130303F62';
wwv_flow_api.g_varchar2_table(48) := '3D223939223A28623D746869732E70726F67726573733C31303F2230223A22222C622B3D307C746869732E70726F6772657373292C612E6368696C6472656E5B305D2E7365744174747269627574652822646174612D70726F6772657373222C22222B62';
wwv_flow_api.g_varchar2_table(49) := '29292C746869732E6C61737452656E646572656450726F67726573733D746869732E70726F6772657373297D2C612E70726F746F747970652E646F6E653D66756E6374696F6E28297B72657475726E20746869732E70726F67726573733E3D3130307D2C';
wwv_flow_api.g_varchar2_table(50) := '617D28292C683D66756E6374696F6E28297B66756E6374696F6E206128297B746869732E62696E64696E67733D7B7D7D72657475726E20612E70726F746F747970652E747269676765723D66756E6374696F6E28612C62297B76617220632C642C652C66';
wwv_flow_api.g_varchar2_table(51) := '2C673B6966286E756C6C213D746869732E62696E64696E67735B615D297B666F7228663D746869732E62696E64696E67735B615D2C673D5B5D2C643D302C653D662E6C656E6774683B653E643B642B2B29633D665B645D2C672E7075736828632E63616C';
wwv_flow_api.g_varchar2_table(52) := '6C28746869732C6229293B72657475726E20677D7D2C612E70726F746F747970652E6F6E3D66756E6374696F6E28612C62297B76617220633B72657475726E206E756C6C3D3D28633D746869732E62696E64696E6773295B615D262628635B615D3D5B5D';
wwv_flow_api.g_varchar2_table(53) := '292C746869732E62696E64696E67735B615D2E707573682862297D2C617D28292C503D77696E646F772E584D4C48747470526571756573742C4F3D77696E646F772E58446F6D61696E526571756573742C4E3D77696E646F772E576562536F636B65742C';
wwv_flow_api.g_varchar2_table(54) := '773D66756E6374696F6E28612C62297B76617220632C642C652C663B663D5B5D3B666F72286420696E20622E70726F746F74797065297472797B653D622E70726F746F747970655B645D2C662E70757368286E756C6C3D3D615B645D26262266756E6374';
wwv_flow_api.g_varchar2_table(55) := '696F6E22213D747970656F6620653F615B645D3D653A766F69642030297D63617463682867297B633D677D72657475726E20667D2C413D5B5D2C6A2E69676E6F72653D66756E6374696F6E28297B76617220612C622C633B72657475726E20623D617267';
wwv_flow_api.g_varchar2_table(56) := '756D656E74735B305D2C613D323C3D617267756D656E74732E6C656E6774683F582E63616C6C28617267756D656E74732C31293A5B5D2C412E756E7368696674282269676E6F726522292C633D622E6170706C79286E756C6C2C61292C412E7368696674';
wwv_flow_api.g_varchar2_table(57) := '28292C637D2C6A2E747261636B3D66756E6374696F6E28297B76617220612C622C633B72657475726E20623D617267756D656E74735B305D2C613D323C3D617267756D656E74732E6C656E6774683F582E63616C6C28617267756D656E74732C31293A5B';
wwv_flow_api.g_varchar2_table(58) := '5D2C412E756E73686966742822747261636B22292C633D622E6170706C79286E756C6C2C61292C412E736869667428292C637D2C4A3D66756E6374696F6E2861297B76617220623B6966286E756C6C3D3D61262628613D2247455422292C22747261636B';
wwv_flow_api.g_varchar2_table(59) := '223D3D3D415B305D2972657475726E22666F726365223B69662821412E6C656E6774682626442E616A6178297B69662822736F636B6574223D3D3D612626442E616A61782E747261636B576562536F636B6574732972657475726E21303B696628623D61';
wwv_flow_api.g_varchar2_table(60) := '2E746F55707065724361736528292C242E63616C6C28442E616A61782E747261636B4D6574686F64732C62293E3D302972657475726E21307D72657475726E21317D2C6B3D66756E6374696F6E2861297B66756E6374696F6E206228297B76617220612C';
wwv_flow_api.g_varchar2_table(61) := '633D746869733B622E5F5F73757065725F5F2E636F6E7374727563746F722E6170706C7928746869732C617267756D656E7473292C613D66756E6374696F6E2861297B76617220623B72657475726E20623D612E6F70656E2C612E6F70656E3D66756E63';
wwv_flow_api.g_varchar2_table(62) := '74696F6E28642C65297B72657475726E204A2864292626632E74726967676572282272657175657374222C7B747970653A642C75726C3A652C726571756573743A617D292C622E6170706C7928612C617267756D656E7473297D7D2C77696E646F772E58';
wwv_flow_api.g_varchar2_table(63) := '4D4C48747470526571756573743D66756E6374696F6E2862297B76617220633B72657475726E20633D6E657720502862292C612863292C637D3B7472797B772877696E646F772E584D4C48747470526571756573742C50297D63617463682864297B7D69';
wwv_flow_api.g_varchar2_table(64) := '66286E756C6C213D4F297B77696E646F772E58446F6D61696E526571756573743D66756E6374696F6E28297B76617220623B72657475726E20623D6E6577204F2C612862292C627D3B7472797B772877696E646F772E58446F6D61696E52657175657374';
wwv_flow_api.g_varchar2_table(65) := '2C4F297D63617463682864297B7D7D6966286E756C6C213D4E2626442E616A61782E747261636B576562536F636B657473297B77696E646F772E576562536F636B65743D66756E6374696F6E28612C62297B76617220643B72657475726E20643D6E756C';
wwv_flow_api.g_varchar2_table(66) := '6C213D623F6E6577204E28612C62293A6E6577204E2861292C4A2822736F636B657422292626632E74726967676572282272657175657374222C7B747970653A22736F636B6574222C75726C3A612C70726F746F636F6C733A622C726571756573743A64';
wwv_flow_api.g_varchar2_table(67) := '7D292C647D3B7472797B772877696E646F772E576562536F636B65742C4E297D63617463682864297B7D7D7D72657475726E205A28622C61292C627D2868292C523D6E756C6C2C793D66756E6374696F6E28297B72657475726E206E756C6C3D3D522626';
wwv_flow_api.g_varchar2_table(68) := '28523D6E6577206B292C527D2C493D66756E6374696F6E2861297B76617220622C632C642C653B666F7228653D442E616A61782E69676E6F726555524C732C633D302C643D652E6C656E6774683B643E633B632B2B29696628623D655B635D2C22737472';
wwv_flow_api.g_varchar2_table(69) := '696E67223D3D747970656F662062297B6966282D31213D3D612E696E6465784F662862292972657475726E21307D656C736520696628622E746573742861292972657475726E21303B72657475726E21317D2C7928292E6F6E282272657175657374222C';
wwv_flow_api.g_varchar2_table(70) := '66756E6374696F6E2862297B76617220632C642C652C662C673B72657475726E20663D622E747970652C653D622E726571756573742C673D622E75726C2C492867293F766F696420303A6A2E72756E6E696E677C7C442E726573746172744F6E52657175';
wwv_flow_api.g_varchar2_table(71) := '65737441667465723D3D3D2131262622666F72636522213D3D4A2866293F766F696420303A28643D617267756D656E74732C633D442E726573746172744F6E5265717565737441667465727C7C302C22626F6F6C65616E223D3D747970656F6620632626';
wwv_flow_api.g_varchar2_table(72) := '28633D30292C73657454696D656F75742866756E6374696F6E28297B76617220622C632C672C682C692C6B3B696628623D22736F636B6574223D3D3D663F652E726561647953746174653C323A303C28683D652E72656164795374617465292626343E68';
wwv_flow_api.g_varchar2_table(73) := '297B666F72286A2E7265737461727428292C693D6A2E736F75726365732C6B3D5B5D2C633D302C673D692E6C656E6774683B673E633B632B2B297B6966284B3D695B635D2C4B20696E7374616E63656F662061297B4B2E77617463682E6170706C79284B';
wwv_flow_api.g_varchar2_table(74) := '2C64293B627265616B7D6B2E7075736828766F69642030297D72657475726E206B7D7D2C6329297D292C613D66756E6374696F6E28297B66756E6374696F6E206128297B76617220613D746869733B746869732E656C656D656E74733D5B5D2C7928292E';
wwv_flow_api.g_varchar2_table(75) := '6F6E282272657175657374222C66756E6374696F6E28297B72657475726E20612E77617463682E6170706C7928612C617267756D656E7473297D297D72657475726E20612E70726F746F747970652E77617463683D66756E6374696F6E2861297B766172';
wwv_flow_api.g_varchar2_table(76) := '20622C632C642C653B72657475726E20643D612E747970652C623D612E726571756573742C653D612E75726C2C492865293F766F696420303A28633D22736F636B6574223D3D3D643F6E6577206E2862293A6E6577206F2862292C746869732E656C656D';
wwv_flow_api.g_varchar2_table(77) := '656E74732E70757368286329297D2C617D28292C6F3D66756E6374696F6E28297B66756E6374696F6E20612861297B76617220622C632C642C652C662C672C683D746869733B696628746869732E70726F67726573733D302C6E756C6C213D77696E646F';
wwv_flow_api.g_varchar2_table(78) := '772E50726F67726573734576656E7429666F7228633D6E756C6C2C612E6164644576656E744C697374656E6572282270726F6772657373222C66756E6374696F6E2861297B72657475726E20682E70726F67726573733D612E6C656E677468436F6D7075';
wwv_flow_api.g_varchar2_table(79) := '7461626C653F3130302A612E6C6F616465642F612E746F74616C3A682E70726F67726573732B283130302D682E70726F6772657373292F327D2C2131292C673D5B226C6F6164222C2261626F7274222C2274696D656F7574222C226572726F72225D2C64';
wwv_flow_api.g_varchar2_table(80) := '3D302C653D672E6C656E6774683B653E643B642B2B29623D675B645D2C612E6164644576656E744C697374656E657228622C66756E6374696F6E28297B72657475726E20682E70726F67726573733D3130307D2C2131293B656C736520663D612E6F6E72';
wwv_flow_api.g_varchar2_table(81) := '6561647973746174656368616E67652C612E6F6E726561647973746174656368616E67653D66756E6374696F6E28297B76617220623B72657475726E20303D3D3D28623D612E72656164795374617465297C7C343D3D3D623F682E70726F67726573733D';
wwv_flow_api.g_varchar2_table(82) := '3130303A333D3D3D612E72656164795374617465262628682E70726F67726573733D3530292C2266756E6374696F6E223D3D747970656F6620663F662E6170706C79286E756C6C2C617267756D656E7473293A766F696420307D7D72657475726E20617D';
wwv_flow_api.g_varchar2_table(83) := '28292C6E3D66756E6374696F6E28297B66756E6374696F6E20612861297B76617220622C632C642C652C663D746869733B666F7228746869732E70726F67726573733D302C653D5B226572726F72222C226F70656E225D2C633D302C643D652E6C656E67';
wwv_flow_api.g_varchar2_table(84) := '74683B643E633B632B2B29623D655B635D2C612E6164644576656E744C697374656E657228622C66756E6374696F6E28297B72657475726E20662E70726F67726573733D3130307D2C2131297D72657475726E20617D28292C643D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(85) := '297B66756E6374696F6E20612861297B76617220622C632C642C663B666F72286E756C6C3D3D61262628613D7B7D292C746869732E656C656D656E74733D5B5D2C6E756C6C3D3D612E73656C6563746F7273262628612E73656C6563746F72733D5B5D29';
wwv_flow_api.g_varchar2_table(86) := '2C663D612E73656C6563746F72732C633D302C643D662E6C656E6774683B643E633B632B2B29623D665B635D2C746869732E656C656D656E74732E70757368286E65772065286229297D72657475726E20617D28292C653D66756E6374696F6E28297B66';
wwv_flow_api.g_varchar2_table(87) := '756E6374696F6E20612861297B746869732E73656C6563746F723D612C746869732E70726F67726573733D302C746869732E636865636B28297D72657475726E20612E70726F746F747970652E636865636B3D66756E6374696F6E28297B76617220613D';
wwv_flow_api.g_varchar2_table(88) := '746869733B72657475726E20646F63756D656E742E717565727953656C6563746F7228746869732E73656C6563746F72293F746869732E646F6E6528293A73657454696D656F75742866756E6374696F6E28297B72657475726E20612E636865636B2829';
wwv_flow_api.g_varchar2_table(89) := '7D2C442E656C656D656E74732E636865636B496E74657276616C297D2C612E70726F746F747970652E646F6E653D66756E6374696F6E28297B72657475726E20746869732E70726F67726573733D3130307D2C617D28292C633D66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(90) := '7B66756E6374696F6E206128297B76617220612C622C633D746869733B746869732E70726F67726573733D6E756C6C213D28623D746869732E7374617465735B646F63756D656E742E726561647953746174655D293F623A3130302C613D646F63756D65';
wwv_flow_api.g_varchar2_table(91) := '6E742E6F6E726561647973746174656368616E67652C646F63756D656E742E6F6E726561647973746174656368616E67653D66756E6374696F6E28297B72657475726E206E756C6C213D632E7374617465735B646F63756D656E742E7265616479537461';
wwv_flow_api.g_varchar2_table(92) := '74655D262628632E70726F67726573733D632E7374617465735B646F63756D656E742E726561647953746174655D292C2266756E6374696F6E223D3D747970656F6620613F612E6170706C79286E756C6C2C617267756D656E7473293A766F696420307D';
wwv_flow_api.g_varchar2_table(93) := '7D72657475726E20612E70726F746F747970652E7374617465733D7B6C6F6164696E673A302C696E7465726163746976653A35302C636F6D706C6574653A3130307D2C617D28292C663D66756E6374696F6E28297B66756E6374696F6E206128297B7661';
wwv_flow_api.g_varchar2_table(94) := '7220612C622C632C642C652C663D746869733B746869732E70726F67726573733D302C613D302C653D5B5D2C643D302C633D4328292C623D736574496E74657276616C2866756E6374696F6E28297B76617220673B72657475726E20673D4328292D632D';
wwv_flow_api.g_varchar2_table(95) := '35302C633D4328292C652E707573682867292C652E6C656E6774683E442E6576656E744C61672E73616D706C65436F756E742626652E736869667428292C613D712865292C2B2B643E3D442E6576656E744C61672E6D696E53616D706C65732626613C44';
wwv_flow_api.g_varchar2_table(96) := '2E6576656E744C61672E6C61675468726573686F6C643F28662E70726F67726573733D3130302C636C656172496E74657276616C286229293A662E70726F67726573733D3130302A28332F28612B3329297D2C3530297D72657475726E20617D28292C6D';
wwv_flow_api.g_varchar2_table(97) := '3D66756E6374696F6E28297B66756E6374696F6E20612861297B746869732E736F757263653D612C746869732E6C6173743D746869732E73696E63654C6173745570646174653D302C746869732E726174653D442E696E697469616C526174652C746869';
wwv_flow_api.g_varchar2_table(98) := '732E636174636875703D302C746869732E70726F67726573733D746869732E6C61737450726F67726573733D302C6E756C6C213D746869732E736F75726365262628746869732E70726F67726573733D4628746869732E736F757263652C2270726F6772';
wwv_flow_api.g_varchar2_table(99) := '6573732229297D72657475726E20612E70726F746F747970652E7469636B3D66756E6374696F6E28612C62297B76617220633B72657475726E206E756C6C3D3D62262628623D4628746869732E736F757263652C2270726F67726573732229292C623E3D';
wwv_flow_api.g_varchar2_table(100) := '313030262628746869732E646F6E653D2130292C623D3D3D746869732E6C6173743F746869732E73696E63654C6173745570646174652B3D613A28746869732E73696E63654C617374557064617465262628746869732E726174653D28622D746869732E';
wwv_flow_api.g_varchar2_table(101) := '6C617374292F746869732E73696E63654C617374557064617465292C746869732E636174636875703D28622D746869732E70726F6772657373292F442E6361746368757054696D652C746869732E73696E63654C6173745570646174653D302C74686973';
wwv_flow_api.g_varchar2_table(102) := '2E6C6173743D62292C623E746869732E70726F6772657373262628746869732E70726F67726573732B3D746869732E636174636875702A61292C633D312D4D6174682E706F7728746869732E70726F67726573732F3130302C442E65617365466163746F';
wwv_flow_api.g_varchar2_table(103) := '72292C746869732E70726F67726573732B3D632A746869732E726174652A612C746869732E70726F67726573733D4D6174682E6D696E28746869732E6C61737450726F67726573732B442E6D617850726F67726573735065724672616D652C746869732E';
wwv_flow_api.g_varchar2_table(104) := '70726F6772657373292C746869732E70726F67726573733D4D6174682E6D617828302C746869732E70726F6772657373292C746869732E70726F67726573733D4D6174682E6D696E283130302C746869732E70726F6772657373292C746869732E6C6173';
wwv_flow_api.g_varchar2_table(105) := '7450726F67726573733D746869732E70726F67726573732C746869732E70726F67726573737D2C617D28292C4C3D6E756C6C2C483D6E756C6C2C723D6E756C6C2C4D3D6E756C6C2C703D6E756C6C2C733D6E756C6C2C6A2E72756E6E696E673D21312C7A';
wwv_flow_api.g_varchar2_table(106) := '3D66756E6374696F6E28297B72657475726E20442E726573746172744F6E5075736853746174653F6A2E7265737461727428293A766F696420307D2C6E756C6C213D77696E646F772E686973746F72792E707573685374617465262628543D77696E646F';
wwv_flow_api.g_varchar2_table(107) := '772E686973746F72792E7075736853746174652C77696E646F772E686973746F72792E7075736853746174653D66756E6374696F6E28297B72657475726E207A28292C542E6170706C792877696E646F772E686973746F72792C617267756D656E747329';
wwv_flow_api.g_varchar2_table(108) := '7D292C6E756C6C213D77696E646F772E686973746F72792E7265706C6163655374617465262628573D77696E646F772E686973746F72792E7265706C61636553746174652C77696E646F772E686973746F72792E7265706C61636553746174653D66756E';
wwv_flow_api.g_varchar2_table(109) := '6374696F6E28297B72657475726E207A28292C572E6170706C792877696E646F772E686973746F72792C617267756D656E7473297D292C6C3D7B616A61783A612C656C656D656E74733A642C646F63756D656E743A632C6576656E744C61673A667D2C28';
wwv_flow_api.g_varchar2_table(110) := '423D66756E6374696F6E28297B76617220612C632C642C652C662C672C682C693B666F72286A2E736F75726365733D4C3D5B5D2C673D5B22616A6178222C22656C656D656E7473222C22646F63756D656E74222C226576656E744C6167225D2C633D302C';
wwv_flow_api.g_varchar2_table(111) := '653D672E6C656E6774683B653E633B632B2B29613D675B635D2C445B615D213D3D213126264C2E70757368286E6577206C5B615D28445B615D29293B666F7228693D6E756C6C213D28683D442E6578747261536F7572636573293F683A5B5D2C643D302C';
wwv_flow_api.g_varchar2_table(112) := '663D692E6C656E6774683B663E643B642B2B294B3D695B645D2C4C2E70757368286E6577204B284429293B72657475726E206A2E6261723D723D6E657720622C483D5B5D2C4D3D6E6577206D7D2928292C6A2E73746F703D66756E6374696F6E28297B72';
wwv_flow_api.g_varchar2_table(113) := '657475726E206A2E74726967676572282273746F7022292C6A2E72756E6E696E673D21312C722E64657374726F7928292C733D21302C6E756C6C213D702626282266756E6374696F6E223D3D747970656F6620742626742870292C703D6E756C6C292C42';
wwv_flow_api.g_varchar2_table(114) := '28297D2C6A2E726573746172743D66756E6374696F6E28297B72657475726E206A2E7472696767657228227265737461727422292C6A2E73746F7028292C6A2E737461727428297D2C6A2E676F3D66756E6374696F6E28297B76617220613B7265747572';
wwv_flow_api.g_varchar2_table(115) := '6E206A2E72756E6E696E673D21302C722E72656E64657228292C613D4328292C733D21312C703D472866756E6374696F6E28622C63297B76617220642C652C662C672C682C692C6B2C6C2C6E2C6F2C702C712C742C752C762C773B666F72286C3D313030';
wwv_flow_api.g_varchar2_table(116) := '2D722E70726F67726573732C653D703D302C663D21302C693D713D302C753D4C2E6C656E6774683B753E713B693D2B2B7129666F72284B3D4C5B695D2C6F3D6E756C6C213D485B695D3F485B695D3A485B695D3D5B5D2C683D6E756C6C213D28773D4B2E';
wwv_flow_api.g_varchar2_table(117) := '656C656D656E7473293F773A5B4B5D2C6B3D743D302C763D682E6C656E6774683B763E743B6B3D2B2B7429673D685B6B5D2C6E3D6E756C6C213D6F5B6B5D3F6F5B6B5D3A6F5B6B5D3D6E6577206D2867292C66263D6E2E646F6E652C6E2E646F6E657C7C';
wwv_flow_api.g_varchar2_table(118) := '28652B2B2C702B3D6E2E7469636B286229293B72657475726E20643D702F652C722E757064617465284D2E7469636B28622C6429292C722E646F6E6528297C7C667C7C733F28722E75706461746528313030292C6A2E747269676765722822646F6E6522';
wwv_flow_api.g_varchar2_table(119) := '292C73657454696D656F75742866756E6374696F6E28297B72657475726E20722E66696E69736828292C6A2E72756E6E696E673D21312C6A2E7472696767657228226869646522297D2C4D6174682E6D617828442E67686F737454696D652C4D6174682E';
wwv_flow_api.g_varchar2_table(120) := '6D617828442E6D696E54696D652D284328292D61292C30292929293A6328297D297D2C6A2E73746172743D66756E6374696F6E2861297B7628442C61292C6A2E72756E6E696E673D21303B7472797B722E72656E64657228297D63617463682862297B69';
wwv_flow_api.g_varchar2_table(121) := '3D627D72657475726E20646F63756D656E742E717565727953656C6563746F7228222E7061636522293F286A2E747269676765722822737461727422292C6A2E676F2829293A73657454696D656F7574286A2E73746172742C3530297D2C2266756E6374';
wwv_flow_api.g_varchar2_table(122) := '696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E652866756E6374696F6E28297B72657475726E206A7D293A226F626A656374223D3D747970656F66206578706F7274733F6D6F64756C652E6578706F727473';
wwv_flow_api.g_varchar2_table(123) := '3D6A3A442E73746172744F6E506167654C6F616426266A2E737461727428297D292E63616C6C2874686973293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200827197319216617)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'pace.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20233232393964643B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200827467581216618)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20233232393964643B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200827856692216619)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20233232393964643B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232393964643B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232393964643B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232393964643B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200828233568216620)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A20726762612833342C203135';
wwv_flow_api.g_varchar2_table(9) := '332C203232312C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200828628775216620)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023323239396464207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023323239396464207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200829105788216621)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20233232393964643B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200829500138216623)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420233232393964643B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20233232393964643B0A2020636F6C6F723A20233232393964643B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200829849138216624)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/blue/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20233232646638303B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200830688063216628)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20233232646638303B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200831112996216628)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20233232646638303B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232646638303B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232646638303B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233232646638303B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200831491175216630)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A20726762612833342C203232';
wwv_flow_api.g_varchar2_table(9) := '332C203132382C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200831873137216631)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023323264663830207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023323264663830207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200832217331216632)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20233232646638303B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200832657925216634)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420233232646638303B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20233232646638303B0A2020636F6C6F723A20233232646638303B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200833082156216635)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/green/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20236562376135353B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200833902078216637)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20236562376135353B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200834267309216638)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20236562376135353B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236562376135353B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236562376135353B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236562376135353B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200834663932216640)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A2072676261283233352C2031';
wwv_flow_api.g_varchar2_table(9) := '32322C2038352C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200835024675216641)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023656237613535207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023656237613535207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200835454050216642)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20236562376135353B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200835869058216643)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420236562376135353B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20236562376135353B0A2020636F6C6F723A20236562376135353B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200836293017216644)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/orange/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20236539306639323B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200837026782216647)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20236539306639323B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200837437898216648)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20236539306639323B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236539306639323B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236539306639323B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236539306639323B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200837857771216650)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A2072676261283233332C2031';
wwv_flow_api.g_varchar2_table(9) := '352C203134362C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200838263687216652)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023653930663932207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023653930663932207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200838693819216653)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20236539306639323B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200839024671216654)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420236539306639323B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20236539306639323B0A2020636F6C6F723A20236539306639323B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200839418626216656)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/pink/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20233763363065303B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200840299527216660)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20233763363065303B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200840645365216662)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20233763363065303B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233763363065303B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233763363065303B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420233763363065303B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200841038029216666)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A2072676261283132342C2039';
wwv_flow_api.g_varchar2_table(9) := '362C203232342C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200841484455216667)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023376336306530207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023376336306530207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200841838271216669)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20233763363065303B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200842261519216671)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420233763363065303B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20233763363065303B0A2020636F6C6F723A20233763363065303B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200842702187216673)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/purple/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20236565333134383B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200843448997216677)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20236565333134383B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200843831549216679)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20236565333134383B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236565333134383B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236565333134383B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236565333134383B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200844260130216680)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A2072676261283233382C2034';
wwv_flow_api.g_varchar2_table(9) := '392C2037322C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A2020746578742D';
wwv_flow_api.g_varchar2_table(10) := '616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D73';
wwv_flow_api.g_varchar2_table(11) := '70696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A2070616365';
wwv_flow_api.g_varchar2_table(12) := '2D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(13) := '6D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F2D';
wwv_flow_api.g_varchar2_table(14) := '7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74';
wwv_flow_api.g_varchar2_table(15) := '656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A2020';
wwv_flow_api.g_varchar2_table(16) := '20202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A2D';
wwv_flow_api.g_varchar2_table(17) := '6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F72';
wwv_flow_api.g_varchar2_table(18) := '6D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F74617465592830646567';
wwv_flow_api.g_varchar2_table(19) := '293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A2020';
wwv_flow_api.g_varchar2_table(20) := '20202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D657320706163652D';
wwv_flow_api.g_varchar2_table(21) := '33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D';
wwv_flow_api.g_varchar2_table(22) := '0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200844655375216685)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023656533313438207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023656533313438207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200845020656216687)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20236565333134383B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200845510915216689)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420236565333134383B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20236565333134383B0A2020636F6C6F723A20236565333134383B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200845814644216691)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/red/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(4) := '6F756E642D636F6C6F723A20236663643235613B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20313270783B0A20206F766572';
wwv_flow_api.g_varchar2_table(5) := '666C6F773A2068696464656E3B0A7D0A0A2E70616365202E706163652D70726F67726573732D696E6E6572207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A202D33';
wwv_flow_api.g_varchar2_table(6) := '3270783B0A2020626F74746F6D3A20303B0A0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6772616469656E74286C696E6561722C203020313030252C203130302520302C20636F6C6F722D73746F7028302E32352C20726762';
wwv_flow_api.g_varchar2_table(7) := '61283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E32352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C207472616E73706172656E74292C20636F6C6F722D73746F7028302E352C';
wwv_flow_api.g_varchar2_table(8) := '2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C2072676261283235352C203235352C203235352C20302E3229292C20636F6C6F722D73746F7028302E37352C207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(9) := '292C20746F287472616E73706172656E7429293B0A20206261636B67726F756E642D696D6167653A202D7765626B69742D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920323525';
wwv_flow_api.g_varchar2_table(10) := '2C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472616E';
wwv_flow_api.g_varchar2_table(11) := '73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6D6F7A2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E322920';
wwv_flow_api.g_varchar2_table(12) := '3235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C2074';
wwv_flow_api.g_varchar2_table(13) := '72616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A202D6F2D6C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E3229';
wwv_flow_api.g_varchar2_table(14) := '203235252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C20';
wwv_flow_api.g_varchar2_table(15) := '7472616E73706172656E74203735252C207472616E73706172656E74293B0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E742834356465672C2072676261283235352C203235352C203235352C20302E32292032';
wwv_flow_api.g_varchar2_table(16) := '35252C207472616E73706172656E74203235252C207472616E73706172656E74203530252C2072676261283235352C203235352C203235352C20302E3229203530252C2072676261283235352C203235352C203235352C20302E3229203735252C207472';
wwv_flow_api.g_varchar2_table(17) := '616E73706172656E74203735252C207472616E73706172656E74293B0A20202D7765626B69742D6261636B67726F756E642D73697A653A203332707820333270783B0A20202D6D6F7A2D6261636B67726F756E642D73697A653A20333270782033327078';
wwv_flow_api.g_varchar2_table(18) := '3B0A20202D6F2D6261636B67726F756E642D73697A653A203332707820333270783B0A20206261636B67726F756E642D73697A653A203332707820333270783B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D7374726970652D61';
wwv_flow_api.g_varchar2_table(19) := '6E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6D73';
wwv_flow_api.g_varchar2_table(20) := '2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73';
wwv_flow_api.g_varchar2_table(21) := '206C696E65617220696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D7374726970652D616E696D6174696F6E203530306D73206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672616D6573207061';
wwv_flow_api.g_varchar2_table(22) := '63652D7374726970652D616E696D6174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(23) := '207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D6F7A2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '3025207B202D6D6F7A2D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D6F7A2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F72';
wwv_flow_api.g_varchar2_table(25) := '6D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6F2D6B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6F2D7472616E73666F726D3A206E6F6E653B207472616E73666F';
wwv_flow_api.g_varchar2_table(26) := '726D3A206E6F6E653B207D0A202031303025207B202D6F2D7472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A402D6D732D6B6579';
wwv_flow_api.g_varchar2_table(27) := '6672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B202D6D732D7472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207D0A7D0A406B65796672616D657320706163652D7374726970652D616E696D6174696F6E207B0A20203025207B';
wwv_flow_api.g_varchar2_table(29) := '207472616E73666F726D3A206E6F6E653B207472616E73666F726D3A206E6F6E653B207D0A202031303025207B207472616E73666F726D3A207472616E736C617465282D333270782C2030293B207472616E73666F726D3A207472616E736C617465282D';
wwv_flow_api.g_varchar2_table(30) := '333270782C2030293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200846662154216695)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-barber-shop.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A202077';
wwv_flow_api.g_varchar2_table(2) := '696474683A2031343070783B0A20206865696768743A2033303070783B0A2020706F736974696F6E3A2066697865643B0A2020746F703A202D393070783B0A202072696768743A202D323070783B0A20207A2D696E6465783A20323030303B0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D7472616E73666F726D3A207363616C652830293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C652830293B0A20202D6D732D7472616E73666F726D3A207363616C652830293B0A20202D6F2D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(4) := '616C652830293B0A20207472616E73666F726D3A207363616C652830293B0A20206F7061636974793A20303B0A20202D7765626B69742D7472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A20202D6D6F7A2D7472616E73697469';
wwv_flow_api.g_varchar2_table(5) := '6F6E3A20616C6C203273206C696E6561722030733B0A20207472616E736974696F6E3A20616C6C203273206C696E6561722030733B0A7D0A0A2E706163652E706163652D616374697665207B0A20202D7765626B69742D7472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(6) := '616C65282E3235293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C65282E3235293B0A20202D6D732D7472616E73666F726D3A207363616C65282E3235293B0A20202D6F2D7472616E73666F726D3A207363616C65282E3235293B0A202074';
wwv_flow_api.g_varchar2_table(7) := '72616E73666F726D3A207363616C65282E3235293B0A20206F7061636974793A20313B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A202077696474683A2031343070783B0A20206865696768743A2031343070783B0A2020626F72';
wwv_flow_api.g_varchar2_table(8) := '6465722D7261646975733A20373070783B0A20206261636B67726F756E643A20236663643235613B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20207A2D696E6465783A20313931313B0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(9) := '616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A20202D6F2D616E696D6174696F6E3A20706163652D';
wwv_flow_api.g_varchar2_table(10) := '626F756E636520317320696E66696E6974653B0A20202D6D732D616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A2020616E696D6174696F6E3A20706163652D626F756E636520317320696E66696E6974653B0A';
wwv_flow_api.g_varchar2_table(11) := '7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A206162736F6C7574653B0A2020646973706C61793A20626C6F636B3B0A20206C6566743A203530253B0A2020626F74746F6D3A20303B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(12) := '783A20313931303B0A20206D617267696E2D6C6566743A202D333070783B0A202077696474683A20363070783B0A20206865696768743A20373570783B0A20206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A2020626F726465722D7261646975733A2033307078202F20343070783B0A20202D7765626B69742D7472616E73666F726D3A2073';
wwv_flow_api.g_varchar2_table(14) := '63616C6559282E33293B0A20202D6D6F7A2D7472616E73666F726D3A207363616C6559282E33293B0A20202D6D732D7472616E73666F726D3A207363616C6559282E33293B0A20202D6F2D7472616E73666F726D3A207363616C6559282E33293B0A2020';
wwv_flow_api.g_varchar2_table(15) := '7472616E73666F726D3A207363616C6559282E33293B0A20202D7765626B69742D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D6F7A2D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6F2D616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A20202D6D732D616E';
wwv_flow_api.g_varchar2_table(17) := '696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A2020616E696D6174696F6E3A20706163652D636F6D7072657373202E357320696E66696E69746520616C7465726E6174653B0A7D0A';
wwv_flow_api.g_varchar2_table(18) := '0A402D7765626B69742D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B';
wwv_flow_api.g_varchar2_table(19) := '0A20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065617365';
wwv_flow_api.g_varchar2_table(20) := '2D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(21) := '6D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A2037';
wwv_flow_api.g_varchar2_table(22) := '3070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(23) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20';
wwv_flow_api.g_varchar2_table(24) := '207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D626F756E6365207B0A20203025207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A';
wwv_flow_api.g_varchar2_table(25) := '20207D0A2020343025207B7D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865696768743A2031343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F7574';
wwv_flow_api.g_varchar2_table(26) := '3B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A202020202D6D6F7A2D616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(27) := '74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A2020';
wwv_flow_api.g_varchar2_table(28) := '20202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B7D0A2020393525207B0A20202020746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A';
wwv_flow_api.g_varchar2_table(29) := '20656173652D696E3B0A20207D0A202031303025207B746F703A20303B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A7D0A0A406B65796672616D657320706163652D626F';
wwv_flow_api.g_varchar2_table(30) := '756E6365207B0A20203025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020353025207B0A20202020746F703A2031343070783B0A202020206865';
wwv_flow_api.g_varchar2_table(31) := '696768743A2031343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020353525207B0A20202020746F703A2031363070783B0A202020206865696768743A2031323070783B';
wwv_flow_api.g_varchar2_table(32) := '0A20202020626F726465722D7261646975733A2037307078202F20363070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A2020363525207B0A20202020746F703A2031323070783B';
wwv_flow_api.g_varchar2_table(33) := '0A202020206865696768743A2031343070783B0A20202020626F726465722D7261646975733A20373070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A2020393525207B0A2020';
wwv_flow_api.g_varchar2_table(34) := '2020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020746F703A20303B0A20202020616E696D6174696F6E2D74696D696E672D66756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E3A20656173652D696E3B0A20207D0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070';
wwv_flow_api.g_varchar2_table(36) := '783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078';
wwv_flow_api.g_varchar2_table(37) := '203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A2065';
wwv_flow_api.g_varchar2_table(38) := '6173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020';
wwv_flow_api.g_varchar2_table(39) := '206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261';
wwv_flow_api.g_varchar2_table(40) := '646975733A2032307078202F20323070783B0A202020202D7765626B69742D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D0A0A402D6D6F7A2D6B65796672616D657320706163652D636F6D70';
wwv_flow_api.g_varchar2_table(41) := '72657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F75';
wwv_flow_api.g_varchar2_table(42) := '6E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A20333070';
wwv_flow_api.g_varchar2_table(43) := '78202F20343070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A202031303025207B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(44) := '743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(45) := '302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A202020202D6D6F7A2D616E696D6174696F6E2D74696D696E672D66756E6374696F6E';
wwv_flow_api.g_varchar2_table(46) := '3A20656173652D6F75743B0A20207D0A7D0A0A406B65796672616D657320706163652D636F6D7072657373207B0A20203025207B0A20202020626F74746F6D3A20303B0A202020206D617267696E2D6C6566743A202D333070783B0A2020202077696474';
wwv_flow_api.g_varchar2_table(47) := '683A20363070783B0A202020206865696768743A20373570783B0A202020206261636B67726F756E643A20726762612832302C2032302C2032302C202E31293B0A20202020626F782D736861646F773A2030203020323070782033357078207267626128';
wwv_flow_api.g_varchar2_table(48) := '32302C2032302C2032302C202E31293B0A20202020626F726465722D7261646975733A2033307078202F20343070783B0A20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D696E3B0A20207D0A20203130302520';
wwv_flow_api.g_varchar2_table(49) := '7B0A20202020626F74746F6D3A20333070783B0A202020206D617267696E2D6C6566743A202D313070783B0A2020202077696474683A20323070783B0A202020206865696768743A203570783B0A202020206261636B67726F756E643A20726762612832';
wwv_flow_api.g_varchar2_table(50) := '302C2032302C2032302C202E33293B0A20202020626F782D736861646F773A203020302032307078203335707820726762612832302C2032302C2032302C202E33293B0A20202020626F726465722D7261646975733A2032307078202F20323070783B0A';
wwv_flow_api.g_varchar2_table(51) := '20202020616E696D6174696F6E2D74696D696E672D66756E6374696F6E3A20656173652D6F75743B0A20207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200847104524216697)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-bounce.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E706163652E706163652D';
wwv_flow_api.g_varchar2_table(2) := '696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365207B0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D77';
wwv_flow_api.g_varchar2_table(3) := '65626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E';
wwv_flow_api.g_varchar2_table(4) := '3A2066697865643B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(5) := '303B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070782021';
wwv_flow_api.g_varchar2_table(6) := '696D706F7274616E743B0A7D0A0A2E70616365202E706163652D70726F67726573733A6265666F7265207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020746578742D616C69676E3A2063656E7465';
wwv_flow_api.g_varchar2_table(7) := '723B0A2020636F6C6F723A20236666663B0A20206261636B67726F756E643A20236663643235613B0A2020626F726465722D7261646975733A203530253B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E73';
wwv_flow_api.g_varchar2_table(8) := '2D73657269663B0A2020666F6E742D73697A653A20313470783B0A2020666F6E742D7765696768743A203130303B0A20206C696E652D6865696768743A20313B0A202070616464696E673A203230252030203770783B0A202077696474683A203530253B';
wwv_flow_api.g_varchar2_table(9) := '0A20206865696768743A203430253B0A20206D617267696E3A20313070782030203020333070783B0A2020646973706C61793A20626C6F636B3B0A20207A2D696E6465783A203939393B0A2020706F736974696F6E3A206162736F6C7574653B0A7D0A0A';
wwv_flow_api.g_varchar2_table(10) := '2E70616365202E706163652D70726F67726573733A6166746572207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236663643235613B0A2020636F6E74656E743A202720273B0A20206469';
wwv_flow_api.g_varchar2_table(11) := '73706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(12) := '7472616E73666F726D3A20726F74617465283930646567293B0A20202020202D6D6F7A2D7472616E73666F726D3A20726F74617465283930646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283930646567293B0A2020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207472616E73666F726D3A20726F74617465283930646567293B0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F';
wwv_flow_api.g_varchar2_table(14) := '6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D33203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A2073';
wwv_flow_api.g_varchar2_table(15) := '70696E2D33203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020666F6E742D73697A653A20313570783B0A20206C696E652D6865696768743A20313B0A20207A2D696E6465783A20';
wwv_flow_api.g_varchar2_table(16) := '323030303B0A2020706F736974696F6E3A206162736F6C7574653B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A2020646973706C61793A20626C6F636B3B0A7D0A0A2E70616365202E706163652D616374697669';
wwv_flow_api.g_varchar2_table(17) := '74793A6265666F7265207B0A2020626F726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236663643235613B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A202070';
wwv_flow_api.g_varchar2_table(18) := '6F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D31';
wwv_flow_api.g_varchar2_table(19) := '203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E2D3120327320';
wwv_flow_api.g_varchar2_table(20) := '6C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D31203273206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A61667465727B0A2020626F';
wwv_flow_api.g_varchar2_table(21) := '726465722D7261646975733A203530253B0A2020626F726465723A2035707820736F6C696420236663643235613B0A2020636F6E74656E743A202720273B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574';
wwv_flow_api.g_varchar2_table(22) := '653B0A2020746F703A20303B0A20206C6566743A20303B0A20206865696768743A20363070783B0A202077696474683A2031303070783B0A0A20202D7765626B69742D7472616E73666F726D3A20726F74617465283435646567293B0A20202020202D6D';
wwv_flow_api.g_varchar2_table(23) := '6F7A2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202D6F2D7472616E73666F726D3A20726F74617465283435646567293B0A202020202020202020207472616E73666F726D3A20726F74617465283435646567293B';
wwv_flow_api.g_varchar2_table(24) := '0A20202D7765626B69742D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A202020';
wwv_flow_api.g_varchar2_table(25) := '202020202D6F2D616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A207370696E2D32203273206C696E65617220696E66696E6974653B0A7D0A0A402D7765';
wwv_flow_api.g_varchar2_table(26) := '626B69742D6B65796672616D6573207370696E2D31207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465';
wwv_flow_api.g_varchar2_table(27) := '28333539646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(28) := '3A20726F7461746528333539646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D31207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D3A20726F7461746528333539646567293B7D0A7D0A406B65796672616D6573207370696E2D31207B0A2020302520207B207472616E73666F726D3A20726F746174652830646567293B207D0A2020313030257B207472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(30) := '61746528333539646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D32207B0A2020302520207B202D7765626B69742D7472616E73666F726D3A20726F746174652835392E38646567293B207D0A2020313030257B202D';
wwv_flow_api.g_varchar2_table(31) := '7765626B69742D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6D6F7A2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F746174652835392E3864';
wwv_flow_api.g_varchar2_table(32) := '6567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A402D6F2D6B65796672616D6573207370696E2D32207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74';
wwv_flow_api.g_varchar2_table(33) := '6174652835392E38646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A406B65796672616D6573207370696E2D32207B0A2020302520207B207472616E73666F726D3A20726F';
wwv_flow_api.g_varchar2_table(34) := '746174652835392E38646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283431382E38646567293B7D0A7D0A0A402D7765626B69742D6B65796672616D6573207370696E2D33207B0A2020302520207B202D7765626B69';
wwv_flow_api.g_varchar2_table(35) := '742D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D7765626B69742D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6D6F7A2D6B65796672616D657320737069';
wwv_flow_api.g_varchar2_table(36) := '6E2D33207B0A2020302520207B202D6D6F7A2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6D6F7A2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D0A7D0A402D6F2D6B';
wwv_flow_api.g_varchar2_table(37) := '65796672616D6573207370696E2D33207B0A2020302520207B202D6F2D7472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B202D6F2D7472616E73666F726D3A20726F74617465283437382E36646567293B7D';
wwv_flow_api.g_varchar2_table(38) := '0A7D0A406B65796672616D6573207370696E2D33207B0A2020302520207B207472616E73666F726D3A20726F74617465283131392E36646567293B207D0A2020313030257B207472616E73666F726D3A20726F74617465283437382E36646567293B7D0A';
wwv_flow_api.g_varchar2_table(39) := '7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200847449382216699)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-center-atom.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563';
wwv_flow_api.g_varchar2_table(3) := '743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20202D7765626B69742D70657273706563746976653A20313272656D3B0A20202D6D6F7A2D70657273706563746976653A20313272656D3B0A20202D6D732D706572737065';
wwv_flow_api.g_varchar2_table(4) := '63746976653A20313272656D3B0A20202D6F2D70657273706563746976653A20313272656D3B0A202070657273706563746976653A20313272656D3B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A2020';
wwv_flow_api.g_varchar2_table(5) := '6865696768743A203672656D3B0A202077696474683A203672656D3B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E';
wwv_flow_api.g_varchar2_table(6) := '706163652D696E616374697665202E706163652D70726F6772657373207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E64';
wwv_flow_api.g_varchar2_table(7) := '65783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A20303B0A2020746F703A20303B0A20206865696768743A203672656D3B0A202077696474683A203672656D';
wwv_flow_api.g_varchar2_table(8) := '2021696D706F7274616E743B0A20206C696E652D6865696768743A203672656D3B0A2020666F6E742D73697A653A203272656D3B0A2020626F726465722D7261646975733A203530253B0A20206261636B67726F756E643A2072676261283235322C2032';
wwv_flow_api.g_varchar2_table(9) := '31302C2039302C20302E38293B0A2020636F6C6F723A20236666663B0A2020666F6E742D66616D696C793A202248656C766574696361204E657565222C2073616E732D73657269663B0A2020666F6E742D7765696768743A203130303B0A202074657874';
wwv_flow_api.g_varchar2_table(10) := '2D616C69676E3A2063656E7465723B0A0A20202D7765626B69742D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D6F7A2D616E696D6174696F6E3A20706163652D33642D';
wwv_flow_api.g_varchar2_table(11) := '7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6D732D616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A20202D6F2D616E696D6174696F6E3A20706163';
wwv_flow_api.g_varchar2_table(12) := '652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A2020616E696D6174696F6E3A20706163652D33642D7370696E6E6572206C696E65617220696E66696E6974652032733B0A0A20202D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(13) := '726D2D7374796C653A2070726573657276652D33643B0A20202D6D6F7A2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6D732D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20202D6F';
wwv_flow_api.g_varchar2_table(14) := '2D7472616E73666F726D2D7374796C653A2070726573657276652D33643B0A20207472616E73666F726D2D7374796C653A2070726573657276652D33643B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E';
wwv_flow_api.g_varchar2_table(15) := '74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20626C6F636B3B0A7D0A0A402D7765626B69742D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(16) := '2020202D7765626B69742D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D7765626B69742D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D6F7A';
wwv_flow_api.g_varchar2_table(17) := '2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D6F7A2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6D6F7A2D7472616E73666F';
wwv_flow_api.g_varchar2_table(18) := '726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6D732D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928306465';
wwv_flow_api.g_varchar2_table(19) := '67293B0A20207D0A2020746F207B0A202020202D6D732D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A402D6F2D6B65796672616D657320706163652D33642D7370696E6E6572207B0A202066726F6D207B0A20';
wwv_flow_api.g_varchar2_table(20) := '2020202D6F2D7472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020202D6F2D7472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A7D0A0A406B65796672616D65732070616365';
wwv_flow_api.g_varchar2_table(21) := '2D33642D7370696E6E6572207B0A202066726F6D207B0A202020207472616E73666F726D3A20726F74617465592830646567293B0A20207D0A2020746F207B0A202020207472616E73666F726D3A20726F746174655928333630646567293B0A20207D0A';
wwv_flow_api.g_varchar2_table(22) := '7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200847897242216701)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-center-circle.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066697865643B0A20206865696768743A20';
wwv_flow_api.g_varchar2_table(3) := '393070783B0A202077696474683A20393070783B0A20206D617267696E3A206175746F3B0A2020746F703A20303B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A7D0A0A2E706163652E706163652D696E61';
wwv_flow_api.g_varchar2_table(4) := '6374697665202E706163652D6163746976697479207B0A2020646973706C61793A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A2032303030';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C6566743A202D333070783B0A2020746F703A202D333070783B0A20206865696768743A20393070783B0A202077696474683A2039307078';
wwv_flow_api.g_varchar2_table(6) := '3B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20333070783B0A2020626F726465722D7374796C653A20646F75626C653B0A2020626F726465722D636F6C6F723A2023666364323561207472616E73706172656E';
wwv_flow_api.g_varchar2_table(7) := '74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A0A20202D7765626B69742D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202D6D6F7A2D616E696D6174';
wwv_flow_api.g_varchar2_table(8) := '696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A202020202020202D6F2D616E696D6174696F6E3A207370696E203173206C696E65617220696E66696E6974653B0A20202020202020202020616E696D6174696F6E3A20737069';
wwv_flow_api.g_varchar2_table(9) := '6E203173206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D61637469766974793A6265666F7265207B0A2020636F6E74656E743A202720273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20';
wwv_flow_api.g_varchar2_table(10) := '313070783B0A20206C6566743A20313070783B0A20206865696768743A20353070783B0A202077696474683A20353070783B0A2020646973706C61793A20626C6F636B3B0A2020626F726465722D77696474683A20313070783B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(11) := '7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A2023666364323561207472616E73706172656E74207472616E73706172656E743B0A2020626F726465722D7261646975733A203530253B0A7D0A0A0A402D7765626B69742D6B65';
wwv_flow_api.g_varchar2_table(12) := '796672616D6573207370696E207B0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6D6F7A2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A';
wwv_flow_api.g_varchar2_table(13) := '2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A402D6F2D6B65796672616D6573207370696E207B0A202031303025207B202D6D6F7A2D7472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(14) := '406B65796672616D6573207370696E207B0A202031303025207B20207472616E73666F726D3A20726F7461746528333539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200848290890216703)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-center-radar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C656374';
wwv_flow_api.g_varchar2_table(3) := '3A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A7D0A0A2E70616365202E706163652D6163746976697479207B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465';
wwv_flow_api.g_varchar2_table(4) := '783A20323030303B0A2020746F703A20303B0A202072696768743A20303B0A202077696474683A2033303070783B0A20206865696768743A2033303070783B0A20206261636B67726F756E643A20236663643235613B0A20202D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(5) := '6E736974696F6E3A202D7765626B69742D7472616E73666F726D20302E33733B0A20207472616E736974696F6E3A207472616E73666F726D20302E33733B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746558283130302529';
wwv_flow_api.g_varchar2_table(6) := '207472616E736C61746559282D313030252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C61746558283130302529207472616E736C61746559282D313030252920726F74617465283435646567293B0A202070';
wwv_flow_api.g_varchar2_table(7) := '6F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E706163652E706163652D616374697665202E706163652D6163746976697479207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465582835302529207472616E';
wwv_flow_api.g_varchar2_table(8) := '736C61746559282D3530252920726F74617465283435646567293B0A20207472616E73666F726D3A207472616E736C617465582835302529207472616E736C61746559282D3530252920726F74617465283435646567293B0A7D0A0A2E70616365202E70';
wwv_flow_api.g_varchar2_table(9) := '6163652D61637469766974793A3A6265666F72652C0A2E70616365202E706163652D61637469766974793A3A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020626F74746F6D3A20333070783B0A202020206C65';
wwv_flow_api.g_varchar2_table(10) := '66743A203530253B0A20202020646973706C61793A20626C6F636B3B0A20202020626F726465723A2035707820736F6C696420236666663B0A20202020626F726465722D7261646975733A203530253B0A20202020636F6E74656E743A2027273B0A7D0A';
wwv_flow_api.g_varchar2_table(11) := '0A2E70616365202E706163652D61637469766974793A3A6265666F7265207B0A202020206D617267696E2D6C6566743A202D343070783B0A2020202077696474683A20383070783B0A202020206865696768743A20383070783B0A20202020626F726465';
wwv_flow_api.g_varchar2_table(12) := '722D72696768742D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A2070';
wwv_flow_api.g_varchar2_table(13) := '6163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203373206C696E65617220696E66696E6974653B0A7D0A0A2E70616365202E706163652D616374';
wwv_flow_api.g_varchar2_table(14) := '69766974793A3A6166746572207B0A20202020626F74746F6D3A20353070783B0A202020206D617267696E2D6C6566743A202D323070783B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(15) := '65722D746F702D636F6C6F723A207267626128302C20302C20302C202E32293B0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C202E32293B0A202020202D7765626B69742D616E696D6174696F6E3A20';
wwv_flow_api.g_varchar2_table(16) := '706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A20202020616E696D6174696F6E3A20706163652D726F746174696F6E203173206C696E65617220696E66696E6974653B0A7D0A0A402D7765626B69742D6B65796672';
wwv_flow_api.g_varchar2_table(17) := '616D657320706163652D726F746174696F6E207B0A20203025207B202D7765626B69742D7472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B202D7765626B69742D7472616E73666F726D3A20726F74617465283335';
wwv_flow_api.g_varchar2_table(18) := '39646567293B207D0A7D0A406B65796672616D657320706163652D726F746174696F6E207B0A20203025207B207472616E73666F726D3A20726F746174652830646567293B207D0A202031303025207B207472616E73666F726D3A20726F746174652833';
wwv_flow_api.g_varchar2_table(19) := '3539646567293B207D0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200848695592216705)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-corner-indicator.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2054686973206973206120636F6D70696C65642066696C652C20796F752073686F756C642062652065646974696E67207468652066696C6520696E207468652074656D706C61746573206469726563746F7279202A2F0A2E70616365207B0A20202D';
wwv_flow_api.g_varchar2_table(2) := '7765626B69742D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F78';
wwv_flow_api.g_varchar2_table(3) := '2D73697A696E673A20626F726465722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A20313070783B0A20202D6D6F7A2D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(4) := '20313070783B0A2020626F726465722D7261646975733A20313070783B0A0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D62';
wwv_flow_api.g_varchar2_table(5) := '6F783B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D706F696E7465722D6576656E74733A206E6F6E653B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A20202D7765626B';
wwv_flow_api.g_varchar2_table(6) := '69742D757365722D73656C6563743A206E6F6E653B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A2020757365722D73656C6563743A206E6F6E653B0A0A20207A2D696E6465783A20323030303B0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(7) := '697865643B0A20206D617267696E3A206175746F3B0A2020746F703A20313270783B0A20206C6566743A20303B0A202072696768743A20303B0A2020626F74746F6D3A20303B0A202077696474683A2032303070783B0A20206865696768743A20323570';
wwv_flow_api.g_varchar2_table(8) := '783B0A2020626F726465723A2032707820736F6C696420236663643235613B0A20206261636B67726F756E642D636F6C6F723A20236666663B0A7D0A0A2E70616365202E706163652D70726F6772657373207B0A20202D7765626B69742D626F782D7369';
wwv_flow_api.g_varchar2_table(9) := '7A696E673A20626F726465722D626F783B0A20202D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A20202D6D732D626F782D73697A696E673A20626F726465722D626F783B0A20202D6F2D626F782D73697A696E673A20626F7264';
wwv_flow_api.g_varchar2_table(10) := '65722D626F783B0A2020626F782D73697A696E673A20626F726465722D626F783B0A0A20202D7765626B69742D626F726465722D7261646975733A203570783B0A20202D6D6F7A2D626F726465722D7261646975733A203570783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(11) := '2D7261646975733A203570783B0A0A20202D7765626B69742D6261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20202D6D6F7A2D6261636B67726F756E642D636C69703A2070616464696E673B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(12) := '2D636C69703A2070616464696E672D626F783B0A0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A20207472616E73666F726D3A207472616E736C617465336428302C20302C2030293B0A0A';
wwv_flow_api.g_varchar2_table(13) := '20206D61782D77696474683A2031393070783B0A2020706F736974696F6E3A2066697865643B0A20207A2D696E6465783A20323030303B0A2020646973706C61793A20626C6F636B3B0A2020706F736974696F6E3A206162736F6C7574653B0A20206C65';
wwv_flow_api.g_varchar2_table(14) := '66743A203370783B0A2020746F703A203370783B0A20206865696768743A20313570783B0A2020666F6E742D73697A653A20313270783B0A20206261636B67726F756E643A20236663643235613B0A2020636F6C6F723A20236663643235613B0A20206C';
wwv_flow_api.g_varchar2_table(15) := '696E652D6865696768743A20363070783B0A2020666F6E742D7765696768743A20626F6C643B0A2020666F6E742D66616D696C793A202048656C7665746963612C20417269616C2C20224C7563696461204772616E6465222C2073616E732D7365726966';
wwv_flow_api.g_varchar2_table(16) := '3B0A7D0A0A2E70616365202E706163652D70726F67726573733A6166746572207B0A2020636F6E74656E743A206174747228646174612D70726F67726573732D74657874293B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(17) := '706163652E706163652D696E616374697665207B0A2020646973706C61793A206E6F6E653B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(11200849018380216707)
,p_plugin_id=>wwv_flow_api.id(11200778490151125315)
,p_file_name=>'themes/yellow/pace-theme-loading-bar.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_simple_checkbox
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(16399070299501725150)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_display_name=>'Simple Checkbox'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.SIMPLE_CHECKBOX'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--===============================================================================',
'-- Renders the Simple Checkbox item type based on the configuration of the page item.',
'--===============================================================================',
'function render_simple_checkbox (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- Use named variables instead of the generic attribute variables',
'    l_checked_value    varchar2(255)  := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value  varchar2(255)  := p_item.attribute_02;',
'    l_checked_label    varchar2(4000) := p_item.attribute_03;',
'',
'    l_name             varchar2(30);',
'    l_value            varchar2(255);',
'    l_checkbox_postfix varchar2(8);',
'    l_result           apex_plugin.t_page_item_render_result;',
'begin',
'    -- if the current value doesn''t match our checked and unchecked value',
'    -- we fallback to the unchecked value ',
'    if p_value in (l_checked_value, l_unchecked_value) then',
'        l_value := p_value;',
'    else',
'        l_value := l_unchecked_value;',
'    end if;',
'',
'    if p_is_readonly or p_is_printer_friendly then',
'        -- if the checkbox is readonly we will still render a hidden field with',
'        -- the value so that it can be used when the page gets submitted',
'        wwv_flow_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        l_checkbox_postfix := ''_DISPLAY'';',
'',
'        -- Tell APEX that this field is NOT navigable',
'        l_result.is_navigable := false;',
'    else',
'        -- If a page item saves state, we have to call the get_input_name_for_page_item',
'        -- to render the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := wwv_flow_plugin.get_input_name_for_page_item(false);',
'',
'        -- render the hidden field which actually stores the checkbox value',
'        sys.htp.prn (',
'            ''<input type="hidden" id="''||p_item.name||''_HIDDEN" name="''||l_name||''" ''||',
'            ''value="''||l_value||''" />'');',
'',
'        -- Add the JavaScript library and the call to initialize the widget',
'        apex_javascript.add_library (',
'            p_name      => ''com_oracle_apex_simple_checkbox.min'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'',
'        apex_javascript.add_onload_code (',
'            p_code => ''com_oracle_apex_simple_checkbox(''||',
'                      apex_javascript.add_value(p_item.name)||',
'                      ''{''||',
'                      apex_javascript.add_attribute(''unchecked'', l_unchecked_value, false)||',
'                      apex_javascript.add_attribute(''checked'',   l_checked_value, false, false)||',
'                      ''});'' );',
'',
'        -- Tell APEX that this field is navigable',
'        l_result.is_navigable := true;',
'    end if;',
'',
'    -- render the checkbox widget',
'    sys.htp.prn (',
'        ''<input type="checkbox" id="''||p_item.name||l_checkbox_postfix||''" ''||',
'        ''value="''||l_value||''" ''||',
'        case when l_value = l_checked_value then ''checked="checked" '' end||',
'        case when p_is_readonly or p_is_printer_friendly then ''disabled="disabled" '' end||',
'        coalesce(p_item.element_attributes, ''class="simple_checkbox"'')||'' />'');',
'',
'    -- print label after checkbox',
'    if l_checked_label is not null then',
'        sys.htp.prn(''<label for="''||p_item.name||l_checkbox_postfix||''">''||l_checked_label||''</label>'');',
'    end if;',
'',
'    return l_result;',
'end render_simple_checkbox;',
'',
'--==============================================================================',
'-- Validates the submitted "Simple Checkbox" value against the configuration to',
'-- make sure that invalid values submitted by hackers are detected.',
'--==============================================================================',
'function validate_simple_checkbox (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_value  in varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    l_checked_value   varchar2(255) := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value varchar2(255) := p_item.attribute_02;',
'',
'    l_result          apex_plugin.t_page_item_validation_result;',
'begin',
'    if not (   p_value in (l_checked_value, l_unchecked_value)',
'            or (p_value is null and l_unchecked_value is null)',
'           )',
'    then',
'        l_result.message := ''Checkbox contains invalid value!'';',
'    end if;',
'    return l_result;',
'end validate_simple_checkbox;',
''))
,p_api_version=>1
,p_render_function=>'render_simple_checkbox'
,p_validation_function=>'validate_simple_checkbox'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ELEMENT:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	This item type plug-in displays a single checkbox but allows you to set 2 values (one for checked and another for unchecked). It&#39;s perfect for Y(es)/N(o) type checkboxes.</p>',
'<p>',
'	Without this plug-in, you would need to write a custom computation to get the same functionality.</p>',
''))
,p_version_identifier=>'1.2'
,p_about_url=>'http://apex.oracle.com/plugins/'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16399115196740799959)
,p_plugin_id=>wwv_flow_api.id(16399070299501725150)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Checked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Y'
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>'Value stored if the checkbox is checked.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16399666400689003336)
,p_plugin_id=>wwv_flow_api.id(16399070299501725150)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Unchecked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Value stored if the checkbox is unchecked. This attribute can also be left blank if you want to store NULL when the checkbox is left unchecked.</p>',
'',
'<p>Note: This value will also be used if the page item is populated with a value which doesn''t match the "Checked Value" or "Unchecked Value".</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16399665895495001839)
,p_plugin_id=>wwv_flow_api.id(16399070299501725150)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Checkbox Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>40
,p_is_translatable=>true
,p_help_text=>'Label to be displayed after the checkbox. If you set this optional attribute, you should remove the text in the label attribute of the page item.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E20636F6D5F6F7261636C655F617065785F73696D706C655F636865636B626F7828652C63297B76617220623D617065782E6A5175657279282223222B65292C613D617065782E6A5175657279282223222B652B225F48494444454E22';
wwv_flow_api.g_varchar2_table(2) := '293B66756E6374696F6E206428297B612E76616C2828622E697328223A636865636B656422293D3D3D74727565293F632E636865636B65643A632E756E636865636B6564297D617065782E6A5175657279282223222B65292E6368616E67652864293B61';
wwv_flow_api.g_varchar2_table(3) := '7065782E6A517565727928646F63756D656E74292E62696E642822617065786265666F7265706167657375626D6974222C64293B617065782E7769646765742E696E6974506167654974656D28652C7B73657456616C75653A66756E6374696F6E286629';
wwv_flow_api.g_varchar2_table(4) := '7B622E617474722822636865636B6564222C28663D3D3D632E636865636B656429293B6428297D2C67657456616C75653A66756E6374696F6E28297B72657475726E20612E76616C28297D7D297D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(14613678799340964379)
,p_plugin_id=>wwv_flow_api.id(16399070299501725150)
,p_file_name=>'com_oracle_apex_simple_checkbox.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(29336759377295566)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(29294544475294651)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(29328961532295388)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(29336646432295563)
,p_nav_bar_list_template_id=>wwv_flow_api.id(29328888144295388)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'DSRRA'
,p_last_upd_yyyymmddhh24miss=>'20170827185642'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(-19363547433493)
,p_plug_name=>'credits'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29302616143295141)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_plug_source=>'Copyright © 2016, 2017.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6175889417843)
,p_name=>'loading_custom'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6265748417844)
,p_event_id=>wwv_flow_api.id(6175889417843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_DE.DANIELH.PACE'
,p_attribute_01=>'pace-theme-barber-shop'
,p_attribute_02=>'yellow'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'Início'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Início'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DSRRA'
,p_last_upd_yyyymmddhh24miss=>'20170827183048'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16043616329651306)
,p_name=>'Results Summary'
,p_template=>wwv_flow_api.id(29310789640295223)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select algorithm.short_name algorithm, ',
'       algorithm.full_name          algorithm_description, ',
'       count(1)                     num_Executions,',
'       count(distinct dataset)      distinct_datasets,',
'       count(distinct streamArff)   distinct_stream_file,',
'       pck_results.getTotal_results(execution.Algorithm) num_results',
'  from execution',
'   inner join algorithm on algorithm.enum_value = execution.algorithm',
' group by algorithm.short_name ,algorithm.full_name, execution.Algorithm',
' order by 1'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(29319553961295292)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16043660358651307)
,p_query_column_id=>1
,p_column_alias=>'ALGORITHM'
,p_column_display_sequence=>1
,p_column_heading=>'Algorithm'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16043797783651308)
,p_query_column_id=>2
,p_column_alias=>'ALGORITHM_DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Algorithm Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16043921671651309)
,p_query_column_id=>3
,p_column_alias=>'NUM_EXECUTIONS'
,p_column_display_sequence=>3
,p_column_heading=>'Executions Total'
,p_use_as_row_header=>'N'
,p_column_format=>'999g999g990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16044007266651310)
,p_query_column_id=>4
,p_column_alias=>'DISTINCT_DATASETS'
,p_column_display_sequence=>4
,p_column_heading=>'Datasets Distinct '
,p_use_as_row_header=>'N'
,p_column_format=>'999g999g990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16044097401651311)
,p_query_column_id=>5
,p_column_alias=>'DISTINCT_STREAM_FILE'
,p_column_display_sequence=>5
,p_column_heading=>'Stream File Distinct'
,p_use_as_row_header=>'N'
,p_column_format=>'999g999g990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16044221361651312)
,p_query_column_id=>6
,p_column_alias=>'NUM_RESULTS'
,p_column_display_sequence=>6
,p_column_heading=>'Total Results'
,p_use_as_row_header=>'N'
,p_column_format=>'999g999g990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29338558708296216)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29314090391295236)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(29338008640296111)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(29332085485295454)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12280668114417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(29338558708296216)
,p_button_name=>'CARREGAR_EXECUÇÃO_B'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(29331619589295442)
,p_button_image_alt=>'Experiments Load'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4'
,p_icon_css_classes=>'fa-upload'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'DSRRA - Regression Results'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - Regression Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Regressão - resultados'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MOA'
,p_last_upd_yyyymmddhh24miss=>'20170827113423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29339923367348729)
,p_plug_name=>'Regressão - resultados'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29310269092295211)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rr.idexecution, ',
'       ex.streamarff, ex.resultfile,',
'       pck_execution.command_line(ex.commandline) commandline,',
'       pck_execution.algorithm_name(ex.algorithm) algorithm_name,',
'       pck_execution.dataset_name(ex.dataset) dataset_name,',
'       pck_execution.method_name(ex.evaluatemethod) method_name,',
'       round(pck_execution.current_mae(rr.idexecution),3) current_mae,',
'       round(pck_execution.current_rmse(rr.idexecution),3) current_rmse,',
'       pck_execution.regression_tree(ex.regression_tree) regression_tree,',
'       pck_execution.basic_window(ex.basicwindow) window_type,',
'       pck_execution.drift_method(ex.drift_method) drift_method,',
'       count(rr.idresult_regression) amostras,',
'       round(avg(rr.mae),3) mae_avg, ',
'       round(avg(rr.rmse),3) rmse_avg, ',
'       max(rr.learning_eval_instances) instances, ',
'       max(rr.evaluation_time_seconds) time ,',
'       fct_seconds_hours (max(rr.evaluation_time_seconds)) time_read,',
'       max(rr.model_size) model_size,',
'       max(rr.model_cost_hours) RAM_Hours,',
'       max(rr.serialized_size_bytes)/1024/1024 ss_bytes',
'from result_regression rr',
' inner join execution ex on ex.idexecution = rr.idexecution',
'group by rr.idexecution, ',
'       ex.streamarff,ex.resultfile, ex.regression_tree, ex.basicwindow, ex.drift_method,',
'       ex.commandline, ex.algorithm, ex.dataset, ex.evaluatemethod',
'order by dataset, algorithm_name, idexecution;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(29340067112348729)
,p_name=>'Regressão - resultados'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MOA'
,p_internal_uid=>29340067112348729
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29340422005348768)
,p_db_column_name=>'IDEXECUTION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_IDEXECUTION:#IDEXECUTION#'
,p_column_linktext=>'#IDEXECUTION#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29340874950348780)
,p_db_column_name=>'STREAMARFF'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Stream ARFF'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29341246205348780)
,p_db_column_name=>'COMMANDLINE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Command Line'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29341607771348780)
,p_db_column_name=>'ALGORITHM_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Algorithm Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29342018601348781)
,p_db_column_name=>'DATASET_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dataset Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29342449086348781)
,p_db_column_name=>'METHOD_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Method Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29342838037348783)
,p_db_column_name=>'MAE_AVG'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'MAE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29343238403348783)
,p_db_column_name=>'RMSE_AVG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'RMSE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29343663957348784)
,p_db_column_name=>'INSTANCES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Instances'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(29344045846348784)
,p_db_column_name=>'TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Time (sec)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2374371417805)
,p_db_column_name=>'CURRENT_MAE'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Current MAE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3265048417814)
,p_db_column_name=>'MODEL_SIZE'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Model size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3429915417815)
,p_db_column_name=>'SS_BYTES'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Memory(MB)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4232952417824)
,p_db_column_name=>'CURRENT_RMSE'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Current RMSE'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4364595417825)
,p_db_column_name=>'RAM_HOURS'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'RAM Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999g990d0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4439107417826)
,p_db_column_name=>'RESULTFILE'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Result File'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4623566417827)
,p_db_column_name=>'TIME_READ'
,p_display_order=>80
,p_column_identifier=>'Q'
,p_column_label=>'Time Read Format'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5724247417838)
,p_db_column_name=>'REGRESSION_TREE'
,p_display_order=>90
,p_column_identifier=>'R'
,p_column_label=>'Regression Tree'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5741576417839)
,p_db_column_name=>'WINDOW_TYPE'
,p_display_order=>100
,p_column_identifier=>'S'
,p_column_label=>'Window Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5844258417840)
,p_db_column_name=>'AMOSTRAS'
,p_display_order=>110
,p_column_identifier=>'T'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5936817417841)
,p_db_column_name=>'DRIFT_METHOD'
,p_display_order=>120
,p_column_identifier=>'U'
,p_column_label=>'Drift Method'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(29344618370349707)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'293447'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'IDEXECUTION:STREAMARFF:ALGORITHM_NAME:DATASET_NAME:METHOD_NAME:INSTANCES:CURRENT_MAE:CURRENT_RMSE:TIME:MODEL_SIZE:SS_BYTES:TIME_READ::REGRESSION_TREE:WINDOW_TYPE:AMOSTRAS:DRIFT_METHOD'
,p_sort_column_1=>'IDEXECUTION'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5490633417836)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Atualiza_ponto_decimal'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' EXECUTE IMMEDIATE ''ALTER SESSION SET NLS_NUMERIC_CHARACTERS= ''''.,'''' '';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'DSRRA - Experiment Detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - Experiment Detail'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Indicadores do Experimento'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DSRRA'
,p_last_upd_yyyymmddhh24miss=>'20170827184136'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(-19990463433499)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(29310789640295223)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(-19947086433498)
,p_region_id=>wwv_flow_api.id(-19990463433499)
,p_chart_type=>'line'
,p_title=>'Error Evolution'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'slideToRight'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'smooth'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_zoom_and_scroll=>'liveScrollOnly'
,p_initial_zooming=>'last'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'on'
,p_time_axis_type=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-19827828433497)
,p_chart_id=>wwv_flow_api.id(-19947086433498)
,p_seq=>10
,p_name=>'RMSE'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, rmse',
'from  result_regression',
'where idexecution = :P3_IDEXECUTION',
'order by instance'))
,p_ajax_items_to_submit=>'P3_IDEXECUTION'
,p_items_value_column_name=>'RMSE'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-19530420433494)
,p_chart_id=>wwv_flow_api.id(-19947086433498)
,p_seq=>20
,p_name=>'MAE'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE',
'from  result_regression',
'where idexecution = :P3_IDEXECUTION',
'order by instance'))
,p_ajax_items_to_submit=>'P3_IDEXECUTION'
,p_items_value_column_name=>'MAE'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(-19686420433496)
,p_chart_id=>wwv_flow_api.id(-19947086433498)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Instance'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(-19625531433495)
,p_chart_id=>wwv_flow_api.id(-19947086433498)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Error'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2455537417806)
,p_name=>'P3_IDEXECUTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(-19990463433499)
,p_prompt=>'Id execution'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3510555417816)
,p_name=>'P3_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(-19990463433499)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Command line'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select commandline ',
'from   execution',
'where  idexecution = :P3_IDEXECUTION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'DSRRA - File Load'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - File Load'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MOA'
,p_last_upd_yyyymmddhh24miss=>'20170827122105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11647427114416)
,p_plug_name=>'Experiments results - Load'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29310789640295223)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17768539114424)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29314090391295236)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(29338008640296111)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(29332085485295454)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12227430114417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11647427114416)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29331514169295442)
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12129165114417)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11647427114416)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29331514169295442)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17014237114422)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12227430114417)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12956561114419)
,p_name=>'P4_TARTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_item_default=>'to_char(trunc(sysdate), ''dd/mm/rr hh24:mi:ss'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Start Date'
,p_format_mask=>'DD/MM/RR HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>18
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13364927114420)
,p_name=>'P4_INISHDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_item_default=>'to_char(trunc(sysdate), ''dd/mm/rr hh24:mi:ss'')'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Finish Date'
,p_format_mask=>'DD/MM/RR HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>18
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13780309114420)
,p_name=>'P4_LGORITHM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Algorithm'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ALGORITMOS'
,p_lov=>'.'||wwv_flow_api.id(19176777139116)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14151672114421)
,p_name=>'P4_VALUATEMETHOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Evaluate Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'METODOS'
,p_lov=>'.'||wwv_flow_api.id(20969242141779)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14541858114421)
,p_name=>'P4_ATASET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Dataset'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATASETS'
,p_lov=>'.'||wwv_flow_api.id(21979019146378)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15019986114421)
,p_name=>'P4_TREAMARFF'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Source ARFF'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct streamARFF from execution'
,p_cSize=>40
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15344493114421)
,p_name=>'P4_ESULTFILE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Dump File (results)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_colspan=>12
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15791134114421)
,p_name=>'P4_OMMANDLINE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_prompt=>'Command Line'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cHeight=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16213031114421)
,p_name=>'P4_OADRESULT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11647427114416)
,p_item_default=>'1'
,p_prompt=>'Upload Dump'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'1'
,p_attribute_02=>'0'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16614989114422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#OWNER#.PCK_RESULTS.SAVEEXECUTION(',
'PSTARTDATE => to_date(:P4_TARTDATE, ''dd/mm/rr hh24:mi:ss''),',
'PFINISHDATE => to_date(:P4_INISHDATE, ''dd/mm/rr hh24:mi:ss''),',
'PALGORITHM => :P4_LGORITHM,',
'PEVALUATEMETHOD => :P4_VALUATEMETHOD,',
'PDATASET => :P4_ATASET,',
'PSTREAMARFF => :P4_TREAMARFF,',
'PRESULTFILE => :P4_ESULTFILE,',
'PCOMMANDLINE => :P4_OMMANDLINE,',
'PLOADRESULT => :P4_OADRESULT);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12227430114417)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'DSRRA - Results Compare (chart)'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - Results Compare (chart)'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Grafico evolução Erros'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'DSRRA'
,p_last_upd_yyyymmddhh24miss=>'20170827182548'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(-21029965433509)
,p_plug_name=>'Error Evolution'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(29310789640295223)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(-20920882433508)
,p_region_id=>wwv_flow_api.id(-21029965433509)
,p_chart_type=>'line'
,p_title=>'Error Evolution'
,p_animation_on_display=>'zoom'
,p_animation_on_data_change=>'slideToRight'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'snap'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_zoom_and_scroll=>'delayedScrollOnly'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_title=>'Error Evolution'
,p_legend_position=>'auto'
,p_overview_rendered=>'on'
,p_time_axis_type=>'auto'
,p_no_data_found_message=>'No data found'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-20470369433504)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_seq=>20
,p_name=>'FIMTDD'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE FIMTDD',
'from  result_regression',
'where idexecution = :P6_IDFIMTDD',
'order by LEARNING_EVAL_INSTANCES',
''))
,p_max_row_count=>1500
,p_ajax_items_to_submit=>'P6_IDFIMTDD'
,p_items_value_column_name=>'FIMTDD'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-20445033433503)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_seq=>30
,p_name=>'AMRules'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE AMRULES',
'from  result_regression',
'where idexecution = :P6_IDAMRULES',
'order by LEARNING_EVAL_INSTANCES'))
,p_max_row_count=>1500
,p_ajax_items_to_submit=>'P6_IDAMRULES'
,p_items_value_column_name=>'AMRULES'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-20260523433502)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_seq=>40
,p_name=>'SFNRegressor AMRules'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE SFN_AMRULES',
'from  result_regression',
'where idexecution = :P6_IDSFN_A',
'order by LEARNING_EVAL_INSTANCES'))
,p_max_row_count=>1500
,p_ajax_items_to_submit=>'P6_IDSFN_A'
,p_items_value_column_name=>'SFN_AMRULES'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-20241339433501)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_seq=>50
,p_name=>'SFNRegressor FIMTDD'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE SFN_FIMTDD',
'from  result_regression',
'where idexecution = :P6_IDSFN_F',
'order by LEARNING_EVAL_INSTANCES'))
,p_max_row_count=>1500
,p_ajax_items_to_submit=>'P6_IDSFN_F'
,p_items_value_column_name=>'SFN_FIMTDD'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(-20779124433507)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_seq=>60
,p_name=>'IBLStreams'
,p_data_source_type=>'SQL_QUERY'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 40 teste,LEARNING_EVAL_INSTANCES/1000 instance, MAE as IBLSTREAMS',
'from  result_regression',
'where idexecution = :P6_IDIBLSTREAMS',
'order by LEARNING_EVAL_INSTANCES'))
,p_max_row_count=>1500
,p_ajax_items_to_submit=>'P6_IDIBLSTREAMS'
,p_items_value_column_name=>'IBLSTREAMS'
,p_items_label_column_name=>'INSTANCE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(-20733180433506)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Instances'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(-20615794433505)
,p_chart_id=>wwv_flow_api.id(-20920882433508)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Error MAE'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3591453417817)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(-21029965433509)
,p_button_name=>'atualiza'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29331514169295442)
,p_button_image_alt=>'Refresh'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2628658417807)
,p_name=>'P6_IDFIMTDD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ID FIMT-DD'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idexecution id, idexecution',
'from   execution',
'where  algorithm = ''F''',
'AND STREAMARFF = :P6_ARQUIVO_ARFF',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_ARQUIVO_ARFF'
,p_ajax_items_to_submit=>'P6_ARQUIVO_ARFF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2642849417808)
,p_name=>'P6_IDAMRULES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ID AMRules'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idexecution id, idexecution',
'from   execution',
'where  algorithm = ''A''',
'AND STREAMARFF = :P6_ARQUIVO_ARFF',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_ARQUIVO_ARFF'
,p_ajax_items_to_submit=>'P6_ARQUIVO_ARFF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2774905417809)
,p_name=>'P6_IDSFN_A'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ID SFN AMRules'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idexecution id, idexecution',
'from   execution',
'where  algorithm = ''S''',
'AND STREAMARFF = :P6_ARQUIVO_ARFF',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_ARQUIVO_ARFF'
,p_ajax_items_to_submit=>'P6_ARQUIVO_ARFF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2847370417810)
,p_name=>'P6_IDSFN_F'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ID SFN FIMT-DD'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idexecution id, idexecution',
'from   execution',
'where  algorithm = ''R''',
'AND STREAMARFF = :P6_ARQUIVO_ARFF',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_ARQUIVO_ARFF'
,p_ajax_items_to_submit=>'P6_ARQUIVO_ARFF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4064365417822)
,p_name=>'P6_DATASET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'Dataset'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PCK_EXECUTION.DATASET_NAME(DATASET) NOME',
', DATASET',
'       FROM EXECUTION',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4220754417823)
,p_name=>'P6_ARQUIVO_ARFF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ARFF File'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT STREAMARFF R, STREAMARFF',
'FROM   EXECUTION',
'WHERE  DATASET = :P6_DATASET',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_DATASET'
,p_ajax_items_to_submit=>'P6_DATASET'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64651779662065)
,p_name=>'P6_IDIBLSTREAMS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(-21029965433509)
,p_prompt=>'ID IBLStreams'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select idexecution id, idexecution',
'from   execution',
'where  algorithm = ''I''',
'AND STREAMARFF = :P6_ARQUIVO_ARFF',
'order by 1 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_ARQUIVO_ARFF'
,p_ajax_items_to_submit=>'P6_ARQUIVO_ARFF'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3663907417818)
,p_name=>'atualiza_grafico'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3591453417817)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6067048417842)
,p_event_id=>wwv_flow_api.id(3663907417818)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(-21029965433509)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(29336759377295566)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'DSRRA - Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(29296576094294879)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MOA'
,p_last_upd_yyyymmddhh24miss=>'20170827113242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(29337296698295934)
,p_plug_name=>'Log In - DSRRA'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29310789640295223)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(29337551138296014)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(29337296698295934)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29331514169295442)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29337352065296006)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(29337296698295934)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(29337472283296014)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(29337296698295934)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(29331095822295428)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29337704486296070)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29337669892296030)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29337997535296111)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29337826516296070)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(6325734401596923)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
