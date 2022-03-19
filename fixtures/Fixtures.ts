import pkg from '@prisma/client';
import { faker } from '@faker-js/faker';

const { PrismaClient } = pkg;
const prisma = new PrismaClient();

async function createFixtures() {
	await prisma.user.create({
		data: {
			name: faker.name.findName(),
			email: faker.internet.email()
		}
	});
	await prisma.app.create({
		data: {
			url: faker.internet.url()
		}
	});
}

async function connect() {
	await prisma.$connect();
}

async function deleteOld() {
	await prisma.user.deleteMany();
	await prisma.app.deleteMany();
}

async function main() {
	console.log('Connecting to database');
	await connect()
		.catch((e) => {
			throw e;
		})
		.then(() => {
			console.log('Deleting all entries');
			deleteOld().catch((e) => {
				throw e;
			});

			console.log('Creating fixtures');
			createFixtures().catch((e) => {
				throw e;
			});
		})
		.finally(async () => {
			await prisma.$disconnect();
			console.log('Done creating fixtures');
		});
}

main();
