<script lang="ts">
  const profileImgUrl = import.meta.env.VITE_PROFILE_URL
  const nickname = import.meta.env.VITE_USER_NAME
  const githubUrl = import.meta.env.VITE_GITHUB_URL
  const email = import.meta.env.VITE_EMAIL
  const bio = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
</script>

<div class="flex flex-col items-center justify-center md:min-h-screen min-h-fit md:mt-0 mt-10 bg-gray-100 dark:bg-gray-800 dark:text-gray-200 text-gray-800">
  <img class="w-56 h-56 rounded-full mb-4" src={profileImgUrl} alt={nickname} />
  <h1 class="text-4xl font-bold mb-6">{nickname}</h1>
  <p class="text-center text-gray-400 mb-4">{bio}</p>

  <div class="mt-10">
    <a href="{githubUrl}" class="text-cyan-600 hover:text-cyan-700 flex items-center space-x-2">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="dark:fill-white"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
        <span>GitHub</span>
    </a>
    <a href="mailto:{email}"class="text-cyan-600 hover:text-cyan-700 flex items-center space-x-2 mt-3">
      <svg fill="#000000" class="dark:fill-white" height="24" width="24" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 330.001 330.001" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g id="XMLID_348_"> <path id="XMLID_350_" d="M173.871,177.097c-2.641,1.936-5.756,2.903-8.87,2.903c-3.116,0-6.23-0.967-8.871-2.903L30,84.602 L0.001,62.603L0,275.001c0.001,8.284,6.716,15,15,15L315.001,290c8.285,0,15-6.716,15-14.999V62.602l-30.001,22L173.871,177.097z"></path> <polygon id="XMLID_351_" points="165.001,146.4 310.087,40.001 19.911,40 "></polygon> </g> </g></svg>
        <span>noneobj@gmail.com</span>
    </a>
</div>
</div>

<style lang="postcss">
  :global(html) {
    background-color: theme(colors.gray.100);
  }
  @media (min-width: 640px) {
            .card-container {
                height: 70vh;
            }
            .inner-card {
                height: 100%;
            }
        }
  .fill-white {
    fill: white
  }
</style>