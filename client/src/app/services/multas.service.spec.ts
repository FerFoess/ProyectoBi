import { TestBed } from '@angular/core/testing';

import { MultasService } from './multas.service'; 

describe('UsuariosService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MultasService = TestBed.get(MultasService); 
    expect(service).toBeTruthy();
  });
});
