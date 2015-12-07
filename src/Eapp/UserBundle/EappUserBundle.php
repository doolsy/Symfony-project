<?php

namespace Eapp\UserBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class EappUserBundle extends Bundle
{
	public function getParent()
  	{
    	return 'FOSUserBundle';
  	}
}
