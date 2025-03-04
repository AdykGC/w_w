<?php include '../Head/Head.php'; ?>


<div class="main-wrapper">
   <div class="container px-3 px-lg-5">
      <article class="resume-wrapper mx-auto theme-bg-light p-5 mb-5 my-5 shadow-lg rounded">
         <?php include '../Components/resume-header.php'; ?>
         <hr>
         <?php include '../Components/resume-intro.php'; ?>
         <hr>
         <?php include '../Components/resume-body.php'; ?>
         <hr>
         <div class="resume-footer text-center">
            <ul class="resume-social-list list-inline mx-auto mb-0 d-inline-block text-muted">
               <li class="list-inline-item mb-lg-0 me-3"><a class="resume-link" href="#"><i class="fab fa-github-square fa-2x me-2" data-fa-transform="down-4"></i><span class="d-none d-lg-inline-block text-muted">github.com/maxegor</span></a></li>
               <li class="list-inline-item mb-lg-0 me-lg-3"><a class="resume-link" href="#"><i class="fab fa-telegram fa-2x me-2" data-fa-transform="down-4"></i><span class="d-none d-lg-inline-block text-muted">@maxegor</span></a></li>
               <li class="list-inline-item mb-lg-0 me-3"><a class="resume-link" href="#"><i class="fab fa-linkedin fa-2x me-2" data-fa-transform="down-4"></i><span class="d-none d-lg-inline-block text-muted">linkedin.com/maxegor</span></a></li>
            </ul>
         </div>
      </article>
   </div>
   <footer class="footer text-center py-4">
   </footer>
</div>
<script src="../assets/js/bootstrap.min.js"></script>


<?php include '../Foot/Foot.php'; ?>