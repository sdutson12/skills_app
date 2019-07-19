const stars = () => {
  const stars = document.querySelectorAll(".fa-star.star-control");
  // HOVER BEHAVIOUR
  stars.forEach(star => {
    star.addEventListener("mouseenter", (event) => {
      // let number = event.target.dataSet;
      let number = parseInt(event.target.dataset.starNumber, 10)

      for (let i = 0; i < 5; i++) {
        stars[i].classList.remove("review-yellow");
      }
      for (let i = 0; i <= number; i++) {
        stars[i].classList.add("rating-yellow");
      }
      });
    })

  stars.forEach(star => {
    star.addEventListener("mouseleave", (event) => {
      // let number = event.target.dataSet;
      const input = document.getElementById('review_stars');
      let number = input.value - 1;

      if (input.value != undefined) {
        for (let i = 0; i < 5; i++) {
          stars[i].classList.remove("rating-yellow");
        }
        for (let i = 0; i <= number; i++) {
          stars[i].classList.add("rating-yellow");
        }
      } else {
        for (let i = 0; i < 5; i++) {
          stars[i].classList.remove("rating-yellow");
        }
      }
      });
    })


  stars.forEach(star => {
    star.addEventListener("click", (event) => {
      let number = parseInt(event.target.dataset.starNumber, 10)
      const input = document.getElementById('review_stars');
      input.setAttribute('value', `${number + 1}`);

      for (let i = 0; i < 5; i++) {
        stars[i].classList.remove("rating-yellow");
      }
      for (let i = 0; i <= number; i++) {
        stars[i].classList.add("rating-yellow");
      }
    });
  })
}

export { stars };
// export default stars;
