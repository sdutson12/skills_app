const stars = () => {
  const stars = document.querySelectorAll(".fa-star.review");
  // HOVER BEHAVIOUR
  stars.forEach(star => {
    star.addEventListener("mouseenter", (event) => {
      // let number = event.target.dataSet;
      let number = parseInt(event.target.dataset.starNumber, 10)

      for (let i = 0; i < 5; i++) {
        stars[i].classList.remove("checked");
      }
      for (let i = 0; i <= number; i++) {
        stars[i].classList.add("checked");
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
          stars[i].classList.remove("checked");
        }
        for (let i = 0; i <= number; i++) {
          stars[i].classList.add("checked");
        }
      } else {
        for (let i = 0; i < 5; i++) {
          stars[i].classList.remove("checked");
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
        stars[i].classList.remove("checked");
      }
      for (let i = 0; i <= number; i++) {
        stars[i].classList.add("checked");
      }
    });
  })
}

export { stars };
// export default stars;
