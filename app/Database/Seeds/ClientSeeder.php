<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use Faker\Factory;

class ClientSeeder extends Seeder
{
	public function run()
	{
		for ($i = 0; $i < 10; $i++) { //to add 10 clients. Change limit as desired
            $this->db->table('clients')->insert($this->generateClient());
        }
	}

	private function generateClient(): array
    {
        $faker = Factory::create();
        return [
            'name' => $faker->name(),
            'email' => $faker->email
        ];
    }

}
