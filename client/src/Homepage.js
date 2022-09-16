import React from 'react'

function Homepage() {
  return (
    <div className='homeContainer'>
      <div className='aboutTindog'>
        <h2 className="home-header">About TinDog</h2>
        <p>
        Welcome to TinDog! If you could put the name your human calls you to get started, we can get going on finding your perfect match! This is a breedist-free space, but please feel free to let everyone know how you identify. We know we ask for your size, but don't worry! Size doesn't matter.
        </p>
        <p>
        We also ask for how old you are, and this time we need the human words again. You can share your digs, so it is easier to keep you out of a long distance relationship. We know it's hard when the only sniffing you can get is downwind.
        </p>
        <p>
        Pics! We know your human has thousands of photos of you to choose from, so let's get a gander at your sniffer. Throw us a bone, and let us know some of your favorite activities and interests. As much as we understand compatible sniffing, sometimes it is nice to engage in other hobbies!
        </p>
        <p>
        Last but far from least, we gotta get real personal. It's okay if your baby mama or daddy is on TinDog! Busy dog parents deserve love too! Let us know if you want kids or want more kids, and definitely let us know if you already have dropped a litter. Heck, if you're AKC registered as a champion bloodline, who's stopping you from sharing the wealth? Dads, Moms, welcome! Neutered? Spayed? Fluid? We got you.
        </p>
      </div>
      <h3 className="home-header">Our Staff</h3>
      <div className="staffContainer">
        <div className='staffCard'>
          <p>
            <img className='staffPic' src={'/Laura.jpeg'} alt="Laura"/>
          </p>
        </div>
        <div className='staffCard'>
          <p>
            <img className='staffPic' src={'/Cesar.jpeg'} alt="Cesar"/>
          </p>
        </div>
        <div className='staffCard'>
          <p>
            <img className='staffPic' src={'/Danna.jpeg'} alt="Danna"/>
          </p>
        </div>
      </div>
    </div>
  )
}

export default Homepage