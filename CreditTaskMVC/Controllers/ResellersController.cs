using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CreditTaskMVC.Models;

namespace FinalProject.Controllers
{
    public class ResellersController : Controller
    {
        private FinalDBEntities db = new FinalDBEntities();

        // GET: Resellers
        public ActionResult Index()
        {
            return View(db.Resellers.ToList());
        }

        // GET: Resellers/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reseller reseller = db.Resellers.Find(id);
            if (reseller == null)
            {
                return HttpNotFound();
            }
            return View(reseller);
        }

        // GET: Resellers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Resellers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "reseller_id,reseller_name,reseller_contact_person,reseller_address,reseller_email,reseller_phone")] Reseller reseller)
        {
            if (ModelState.IsValid)
            {
                db.Resellers.Add(reseller);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(reseller);
        }

        // GET: Resellers/Edit/5
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reseller reseller = db.Resellers.Find(id);
            if (reseller == null)
            {
                return HttpNotFound();
            }
            return View(reseller);
        }

        // POST: Resellers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "reseller_id,reseller_name,reseller_contact_person,reseller_address,reseller_email,reseller_phone")] Reseller reseller)
        {
            if (ModelState.IsValid)
            {
                db.Entry(reseller).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(reseller);
        }

        // GET: Resellers/Delete/5
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Reseller reseller = db.Resellers.Find(id);
            if (reseller == null)
            {
                return HttpNotFound();
            }
            return View(reseller);
        }

        // POST: Resellers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            Reseller reseller = db.Resellers.Find(id);
            db.Resellers.Remove(reseller);
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
