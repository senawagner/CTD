// 28/09/2021
// Callback é um tipo de função que só é executada após o processamento de outra função


const pets = [
  {
      nome: 'Bob',
      raca: 'Labrador',
      idade: 2,
      cliente: true
  },

  {
      nome: 'Ted',
      raca: 'srd',
      idade: 5,
      cliente: true
  }
];

function clientes(pet) {
  console.log(`${pet.nome} - ${pet.raca}`)
}

pets.forEach(clientes)
