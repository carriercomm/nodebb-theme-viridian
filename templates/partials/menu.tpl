			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div>
					<img class="{brand:logo:display} forum-logo" src="{brand:logo}" />
					<h1 class="navbar-brand forum-title">{title}</h1>

					<div class="header-topic-title visible-xs">
						<span></span>
					</div>
				</div>
			</div>

			<div class="navbar-collapse collapse navbar-ex1-collapse">
				<ul id="main-nav" class="nav navbar-nav pull-left">
					<li>
						<a href="{relative_path}/"><i class="fa fa-fw fa-home" title="[[global:home]]"></i><span class="visible-xs-inline"> [[global:home]]</span></a>
					</li>
					<!-- IF isAdmin -->
					<li>
						<a href="{relative_path}/admin" target="_top"><i class="fa fa-fw fa-cogs" title="[[global:header.admin]]"></i><span class="visible-xs-inline"> [[global:header.admin]]</span></a>
					</li>
					<!-- ENDIF isAdmin -->
					<!-- IF searchEnabled -->
					<li class="visible-xs">
						<a id="mobile-search-button" href="{relative_path}/search"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i> [[global:header.search]]</a>
					</li>
					<!-- ENDIF searchEnabled -->
					<!-- BEGIN navigation -->
					<li class="{navigation.class}">
						<a href="{relative_path}{navigation.route}" title="{navigation.title}">
							<!-- IF navigation.iconClass -->
							<i class="fa fa-fw {navigation.iconClass}"></i>
							<!-- ENDIF navigation.iconClass -->

							<!-- IF navigation.text -->
							<span class="{navigation.textClass}">{navigation.text}</span>
							<!-- ENDIF navigation.text -->
						</a>
					</li>
					<!-- END navigation -->
				</ul>

				<ul id="logged-in-menu" class="nav navbar-nav navbar-right hide pull-right">
					<li>
						<a href="#" id="reconnect" class="hide" title="Connection to {title} has been lost, attempting to reconnect..."><i class="fa fa-check"></i></a>
					</li>

					<li class="notifications dropdown text-center hidden-xs">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="notif_dropdown"><i class="fa fa-fw fa-bell-o" data-content="0" title="[[global:header.notifications]]"></i></a>
						<ul id="notif-list" class="dropdown-menu" aria-labelledby="notif_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:notifications.loading]]</a>
							</li>
						</ul>
					</li>

					<li class="visible-xs">
						<a href="{relative_path}/notifications"><i class="fa fa-exclamation-triangle fa-fw" title="[[notifications:title]]"></i> [[notifications:title]]</a>
					</li>

					<li class="chats dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="chat_dropdown"><i class="fa fa-comment-o fa-fw" title="[[global:header.chats]]"></i> <span class="visible-xs-inline">[[global:header.chats]]</span></a>
						<ul id="chat-list" class="dropdown-menu" aria-labelledby="chat_dropdown">
							<li>
								<a href="#"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
							</li>
						</ul>
					</li>

					<li id="user_label" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
							<img src=""/>
						</a>
						<ul id="user-control-list" class="dropdown-menu" aria-labelledby="user_dropdown">
							<li>
								<a id="user-profile-link" href=""><i class="fa fa-circle status-offline"></i><span>[[global:header.profile]]</span></a>
							</li>
							<li id="logout-link">
								<a href="#">[[global:logout]]</a>
							</li>
							<li role="presentation" class="divider"></li>
							<li>
								<a href="#" class="user-status" data-status="online"><i class="fa fa-circle status online"></i><span> [[global:online]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="away"><i class="fa fa-circle status away"></i><span> [[global:away]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="dnd"><i class="fa fa-circle status dnd"></i><span> [[global:dnd]]</span></a>
							</li>
							<li>
								<a href="#" class="user-status" data-status="offline"><i class="fa fa-circle status offline"></i><span> [[global:invisible]]</span></a>
							</li>
						</ul>
					</li>
				</ul>

				<ul id="logged-out-menu" class="nav navbar-nav navbar-right pull-right">
					<!-- IF allowRegistration -->
					<li>
						<a href="{relative_path}/register">
							<i class="fa fa-pencil visible-xs-inline"></i>
							<span>[[global:register]]</span>
						</a>
					</li>
					<!-- ENDIF allowRegistration -->
					<li>
						<a href="{relative_path}/login">
							<i class="fa fa-sign-in visible-xs-inline"></i>
							<span>[[global:login]]</span>
						</a>
					</li>
				</ul>

				<!-- IF searchEnabled -->
				<ul id="logged-conditional-menu" class="nav navbar-nav navbar-right">
					<li>
						<form id="search-form" class="navbar-form navbar-right hidden-xs" role="search" method="GET" action="">
							<div class="hide" id="search-fields">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">
								</div>
								<button type="submit" class="btn btn-default hide">[[global:search]]</button>
							</div>
							<button id="search-button" type="button" class="btn btn-link hide"><i class="fa fa-search fa-fw" title="[[global:header.search]]"></i></button>
						</form>
					</li>
				</ul>
				<!-- ENDIF searchEnabled -->

				<ul class="nav navbar-nav navbar-right pagination-block hidden visible-lg visible-md">
					<li>
						<a href="#">
							<i class="fa fa-chevron-up pointer"></i>
							<span id="pagination"></span>
							<i class="fa fa-chevron-down pointer"></i>
							<div class="progress-container">
								<div class="progress-bar"></div>
							</div>
						</a>
					</li>
				</ul>

				<div class="header-topic-title hidden-xs">
					<span></span>
				</div>
			</div>