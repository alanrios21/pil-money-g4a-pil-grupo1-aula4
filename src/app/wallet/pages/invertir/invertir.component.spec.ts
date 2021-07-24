import { ComponentFixture, TestBed } from '@angular/core/testing';

import { InvertirComponent } from './invertir.component';

describe('InvertirComponent', () => {
  let component: InvertirComponent;
  let fixture: ComponentFixture<InvertirComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ InvertirComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(InvertirComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
