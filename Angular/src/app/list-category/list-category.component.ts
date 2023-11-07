import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Category } from '../category';
import { CategoryService } from '../category.service';

@Component({
  selector: 'app-list-category',
  templateUrl: './list-category.component.html',
  styleUrls: ['./list-category.component.css']
})
export class ListCategoryComponent implements OnInit {
  [x: string]: any;

  listCategories:any=[];
  


  constructor(public cs:CategoryService,private router:Router) { }

  ngOnInit(): void {
    this.loadCategories();
//
/* this.loadChecklistData(); */


  }

/*   loadChecklistData() {
    this.cs.getCheckboxData().subscribe((data: any[]) => {
      this.listCategories = data;
      // Puedes realizar cualquier otra lógica relacionada con los checklist aquí
    });
  } */


  loadCategories(){
    return this.cs.getCategories().subscribe((data:{})=>{
      console.log(data);
      this.listCategories=data;
      
    })
  }



  onEdit(category:Category){
    console.log(category);
    this.cs.selectCategory=Object.assign({},category);
    this.router.navigate(["/add-category"]);
  }

  onDelete(id:number){
    this.cs.deleteCategory(id).subscribe((response)=>{
      this.loadCategories();
    })
  }
  
   onCheck(index: number) {
    this.listCategories[index].isCompleted = this.listCategories[index].isCompleted === 1 ? 0 : 1;
    //this.listCategories[index].isCompleted = !this.listCategories[index].isCompleted;
    const taskToUpdate = this.listCategories[index];
    taskToUpdate.completado = !taskToUpdate.completado;

    this.cs.updateTask(taskToUpdate.id, taskToUpdate).subscribe((response) => {
      console.log('Tarea actualizada:', response);
    });
  }



}
