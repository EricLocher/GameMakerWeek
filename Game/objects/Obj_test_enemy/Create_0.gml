enemyHealth = 3;


function DamageEnemy(){
	enemyHealth --;
	if(enemyHealth <= 0){
		instance_destroy();	
	}
}

