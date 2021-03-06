<@cl.html  pateType="personal" bodyCss="user-center my-invest">
	<div class="uc-main">
        <div class="uc-main-hd"><strong>Investment</strong></div>
        <div class="uc-main-bd">
            <div class="tab uc-tab">
                <ul class="tab-hd uc-tab-hd">
                    <li class="<#if flag=="pending"> active</#if>"  id="pending"><a class="" href="${taglibs.ctx}/account/myinvest/investList.htm?flag=pending" title=""><span>auditing</span><em>${(map.pendingCount)!}</em></a></li>
                    <li class="<#if flag=="receivables"> active</#if>"  id="receivables"><a class="" href="${taglibs.ctx}/account/myinvest/investList.htm?flag=receivables" title=""><span>repaying</span><em>${(map.receivablesCount)!}</em></a></li>
                    <li class="<#if flag=="complete"> active</#if> last" id="complete"><a class="" href="${taglibs.ctx}/account/myinvest/investList.htm?flag=complete" title=""><span>repaid</span><em>${(map.completeCount)!}</em></a></li>
                </ul>
                <div class="tab-bd uc-tab-bd">
                	<div id="myinvesttab">
                    	<div class="tab-bd-con active"  id="myinvest-tab01">
							<form action="${taglibs.ctx}/account/myinvest/investList.htm?flag=receivables" method="POST" id="searchForm">
							    <div class="uc-table">
							        <table class="table">
							            <thead>
							                <tr>
							                    <th class="tl my-project-name">loanName</th>
							                    <th class="tl project-datetime">investTime</th>
							                    <th class="tl invest-money">investAmount</th>
							                    <th class="tl table-project-detail">detail</th>
							                </tr>
							            </thead>
							            <tbody>
							            	<#if invests?size lte 0>
								                <tr>
								                    <td>no data</td>
								                    <td></td>
								                    <td></td>
								                    <td></td>
								                </tr>
							                <#else>
								                <#list invests as invest>
									                <tr>
									                    <td><a class="project-name-link"  href="${taglibs.allctx}/invest/investDetail.htm?loanCode=${invest.loanCode}" title="">${invest.loanName!}</a></td>
									                    <td><@h.dateformat value=invest.investmentTime format='yyyy-MM-dd HH:mm:ss'/></td>
									                    <td><@h.numf value=invest.investmentAmount/></td>
									                    <td><a id="returnsection-list-view" href="details.htm?investId=${invest.id}" title="">view</a></td>
									                </tr>
								                </#list>
							                </#if>
							            </tbody>
							        </table>
							       <@ctl.page page=criteria.page css="pagination-right"/>
							      </div>
							    </form>
							</div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</@cl.html>