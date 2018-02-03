@if(Auth::guard('web')->check())
	<p class="text-success">You are logged in as <strong class="active-strong">Vehicle Owner</strong></p>
@else
	<p class="text-danger">You are logged out as Vehicle Owner <strong class="links"><a href="{{ route('login') }}">Login</a></strong></p>
@endif

@if(Auth::guard('mechanic')->check())
	<p class="text-success">You are logged in as <strong class="active-strong">Mechanic</strong></p>
@else
	<p class="text-danger">You are logged out as Mechanic <strong class="links"><a href="{{ route('mechanic.login') }}">Login</a></strong></p>
@endif