﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PilMoney.Models;

namespace PilMoney.Controllers
{
    public class ComprasController : Controller
    {
        private PilMoneyEntities db = new PilMoneyEntities();

        // GET: Compras
        public ActionResult Index()
        {
            var compras = db.Compras.Include(c => c.Cuentas);
            return View(compras.ToList());
        }

        // GET: Compras/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            return View(compras);
        }

        // GET: Compras/Create
        public ActionResult Create()
        {
            ViewBag.CVU = new SelectList(db.Cuentas, "CVU", "Alias");
            return View();
        }

        // POST: Compras/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idCompra,Importe,Fecha,CVU")] Compras compras)
        {
            if (ModelState.IsValid)
            {
                db.Compras.Add(compras);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CVU = new SelectList(db.Cuentas, "CVU", "Alias", compras.CVU);
            return View(compras);
        }

        // GET: Compras/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            ViewBag.CVU = new SelectList(db.Cuentas, "CVU", "Alias", compras.CVU);
            return View(compras);
        }

        // POST: Compras/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idCompra,Importe,Fecha,CVU")] Compras compras)
        {
            if (ModelState.IsValid)
            {
                db.Entry(compras).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CVU = new SelectList(db.Cuentas, "CVU", "Alias", compras.CVU);
            return View(compras);
        }

        // GET: Compras/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Compras compras = db.Compras.Find(id);
            if (compras == null)
            {
                return HttpNotFound();
            }
            return View(compras);
        }

        // POST: Compras/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Compras compras = db.Compras.Find(id);
            db.Compras.Remove(compras);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
