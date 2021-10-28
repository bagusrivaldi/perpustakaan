<?php

use App\Models\Anggota;
use Illuminate\Database\Seeder;

class AnggotaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 10; $i++) {
        	$faker = Faker\Factory::create();

        	$anggota = new Anggota;
        	$anggota->nama = $faker->name;
            $anggota->sex = $faker->randomElement(['P', 'L']);
        	$anggota->telp = $faker->phoneNumber;
        	$anggota->alamat = $faker->address;
        	$anggota->email = $faker->freeEmail;

        	$anggota->save();
        }
    }
}