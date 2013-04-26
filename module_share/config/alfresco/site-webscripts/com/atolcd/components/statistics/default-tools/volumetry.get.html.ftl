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

<#assign el = args.htmlid?html />

<script type="text/javascript">//<![CDATA[
  new AtolStatistics.Volumetry("${args.htmlid?js_string}").setOptions({
      pathToSwf: "${page.url.context}/res/components/atolcd/statistics/open_flash_chart/open-flash-chart.swf",
      siteId: "${page.url.templateArgs.site!""}",
      currentUser: "${user.name?js_string}",
      isAdmin: ${user.isAdmin?string},
      currentDateFilter: "months"
    }
  ).setMessages(${messages});
//]]></script>

<div id="${el}-body" class="statistic-tool">
  <div id="${el}-volumetry">
    <div class="yui-g">
      <div class="yui-u first">
        <div class="title">
          ${msg("label.title")}
        </div>
      </div>
      <div class="yui-u align-right">&nbsp;</div>
    </div>
    <div class="yui-g separator">
      <div class="header">
        <div id="criterias" class="criterias">
          <label>${msg("label.menu.site")}</label><span class="criterias-button"><input type="button" id="site-criteria" name="${el}-site-criteria-button" value="" /></span>

          <span class="criterias-button">
            <input type="button" id="chart-type-criteria" name="${el}-chart-type-criteria-button" value="${msg('graph.type.line')}" />
            <select id="chart-type-criteria-select" name="${el}-chart-type-criteria-select">
              <option value="line">${msg("graph.type.line")}</option>
              <option value="bar">${msg("graph.type.bar")}</option>
            </select>
          </span>
        </div>

        <div id="bar-stack-criteria-container">
          <input id="bar_stack-criteria" type="checkbox"></input><label for="bar_stack-criteria">${msg("label.menu.use.bar_stack")}</label>
        </div>
      </div>
    </div>

    <div id="${el}-chart-body" class="main-chart">
      <div class="separator browsing">
          <div id="chart-prev" class="img-prev-arrow"></div>

          <div class="yui-u filters">
            <span id="home">
              <span class="home-img" title="${msg('label.home')}"></span>
            </span>
            <span id="${el}-by-days">
              <a href="#">${msg("label.byDay")}</a>
            </span>
            <span class="vb"> | </span>
            <span id="${el}-by-weeks">
              <a href="#">${msg("label.byWeek")}</a>
            </span>
            <span class="vb"> | </span>
            <span id="${el}-by-months">
              <a href="#">${msg("label.byMonth")}</a>
            </span>
            <span class="vb"> | </span>
            <span id="${el}-by-years">
              <a href="#">${msg("label.byYear")}</a>
            </span>

            <span class="export-button">
              <span class="yui-button yui-push-button" id="${el}-export-button">
                <span class="first-child"><button>${msg("button.export")}</button></span>
              </span>
            </span>
          </div>

          <div id="chart-next" class="img-next-arrow"></div>
      </div>
      <div id="${el}-chart-container" class="chart-container">
        <div class="chart" id="${el}-chart"></div>
      </div>
    </div>
  </div>
</div>