<#include "/org/alfresco/include/alfresco-template.ftl" />

<#--
 * Copyright (C) 2013 Atol Conseils et Développements.
 * http://www.atolcd.com/
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
-->

<@templateHeader>
  <#if userIsAllowed?? && userIsAllowed>
    <script type="text/javascript">//<![CDATA[
      new Alfresco.widget.Resizer("Statistics").setOptions(
      {
         initialWidth: 200
      });
    //]]></script>
  </#if>
</@>

<@templateBody>
   <div id="alf-hd">
      <@region id="header" scope="global" />
      <#if page.url.templateArgs.site?? && page.url.templateArgs.site?has_content>
        <@region id="site-title" scope="template" />
        <@region id="navigation" scope="template" />
      <#else>
        <@region id="title" scope="template" />
      </#if>
   </div>

   <div id="bd">
      <#if userIsAllowed?? && userIsAllowed>
      <div class="yui-t1" id="alfresco-statistics">
         <div id="yui-main">
            <div class="yui-b" id="alf-content">
               <@region id="myctool" scope="page" />
            </div>
         </div>
         <div class="yui-b" id="alf-filters">
            <@region id="tools" scope="template" />
         </div>
      </div>
      <#else>
        <@region id="unauthorized" scope="template" />
      </#if>
   </div>
</@>

<@templateFooter>
   <div id="alf-ft">
      <@region id="footer" scope="global" />
   </div>
</@>