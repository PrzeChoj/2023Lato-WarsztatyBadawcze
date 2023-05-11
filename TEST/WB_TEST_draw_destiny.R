draw_destiny <- function() {
  numery_prezentacji <- c(1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 19, 21, 23)
  nazwiska_prezentarow <- c("Wnęk", "Grabias", "Kisiel", "Safiejko", "Sawisko", "Grabarski", "Pludowski", "Zajko", "Szpetmański", "Mączka", "Jeczeń", "Szuwarska", "Kosakowski", "Szczepaniak", "Nizwantowski")
  
  out <- matrix(character(15 * 5), nrow = 5)
  for (i in 1:15) {
    out[1:4, i] <- sample(nazwiska_prezentarow[-i], size = 4)
  }
  out[5, ] <- NA
  
  colnames(out) <- nazwiska_prezentarow
  rownames(out) <- c("Prezentacja 1", "Prezentacja 2", "Prezentacja 3", "Prezentacja 4", "Prezentacja dowolna (poza własnyą oraz pozostałymi)")
  
  out
}

tresc_pytan <- function() {
  cat("Pytania 1, 2, 3, 4, 5 punktowane po 2 pkt i mają treść:\n\nOpisz co zrozumiałeś/łaś w prezentacji X. Co Ci się w niej podobało i co mogłoby być poprawione.\nNajwyżej oceniane jest odniesienie się do merytorycznej części prezentacji.\n====================================================================================================\nPytanie 6 punktowane 0 pkt i ma treść:\n\nOpisz jak podobał Ci się Journal Club.\nCo zmieniłbyś/łabyś w zajęciach (godzina była zabójcza, ale czy coś więcej)?")
}

withr::with_seed(213742069, print(draw_destiny()))
tresc_pytan()
