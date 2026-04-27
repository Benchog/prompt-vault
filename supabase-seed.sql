-- Generated seed data for PromptVault
truncate table prompts restart identity cascade;
truncate table packages restart identity cascade;
insert into packages (name, category, price, prompt_count, checkout_url) values ('Content Creation Pack', 'CONTENT CREATION', 25, 40, '#');
insert into packages (name, category, price, prompt_count, checkout_url) values ('Business Writing Pack', 'BUSINESS WRITING', 25, 30, '#');
insert into packages (name, category, price, prompt_count, checkout_url) values ('Student Powerpack Pack', 'STUDENT POWERPACK', 25, 15, '#');
insert into packages (name, category, price, prompt_count, checkout_url) values ('Career & Cv Pack Pack', 'CAREER & CV PACK', 25, 8, '#');
insert into packages (name, category, price, prompt_count, checkout_url) values ('Side Hustle Starter Pack', 'SIDE HUSTLE STARTER', 25, 8, '#');
insert into packages (name, category, price, prompt_count, checkout_url) values ('Personal Growth Pack Pack', 'PERSONAL GROWTH PACK', 25, 8, '#');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 1, 'The Viral Caption Formula', 'Generate a high-engagement Instagram caption for any photo or video post.', 'You are a top-tier social media strategist who has grown multiple accounts past 100,000 followers. Your specialty is writing Instagram captions that stop the scroll, spark emotion, and drive comments.

Write a compelling Instagram caption for the following post:

CONTENT TYPE: [e.g., photo of me at the gym / flat lay of my morning routine / video of my business setup]
MY NICHE: [e.g., fitness / personal finance / fashion / food / motivation]
MY TARGET AUDIENCE: [e.g., young African professionals aged 18–30 / stay-at-home mums / university students]
THE FEELING I WANT TO EVOKE: [e.g., inspired / entertained / curious / motivated]
CALL TO ACTION: [e.g., comment your answer / save this post / follow for more / click the link in bio]

Write the caption in this exact structure:
1. A powerful first line (hook) that makes people stop scrolling — max 10 words, no hashtags yet
2. 3–5 lines of engaging body copy that delivers value, tells a story, or sparks emotion
3. A clear, conversational call to action
4. 15–20 targeted hashtags separated into tiers: 5 large (1M+ posts), 5 medium (100K–1M posts), 5 niche (under 100K posts)

Keep the tone: [e.g., casual and fun / bold and direct / warm and personal / educational]
Length: Medium (150–250 words for the caption, not counting hashtags).', '💡 PRO TIP: Run this prompt 3 times and combine the best hook from one with the best body from another.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 2, 'The Story Sequence Builder', 'Plan a full 5-slide Instagram or Facebook Story that keeps viewers tapping through to the end.', 'You are an expert social media storyteller who specialises in Instagram and Facebook Stories. You understand the psychology of keeping viewers engaged across multiple slides.

Create a 5-slide Story sequence for the following topic:

TOPIC/MESSAGE I WANT TO SHARE: [e.g., how I paid off a debt in 3 months / my morning routine / a product I''m launching / a tip my audience needs]
MY PLATFORM: [Instagram Stories / Facebook Stories / WhatsApp Status]
MY NICHE: [e.g., personal finance / lifestyle / entrepreneurship / fitness]
MY GOAL FOR THIS STORY: [e.g., grow followers / promote a product / build trust / entertain]

For each of the 5 slides, provide:
- SLIDE NUMBER & PURPOSE (e.g., Slide 1: The Hook)
- TEXT OVERLAY: The exact words to display on screen (max 15 words, punchy)
- VISUAL SUGGESTION: What image, video, or graphic to use
- STICKER/INTERACTIVE ELEMENT: Poll, quiz, question box, emoji slider — and the exact question to ask
- TRANSITION NOTE: How to connect this slide to the next

End the sequence with a slide that drives one clear action (follow, DM me, link in bio, save).', '💡 PRO TIP: Use the Poll sticker on slide 2 or 3 — it doubles your completion rate because people want to see the results.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 3, 'The Content Pillar Generator', 'Build a full content strategy around 5 core pillars so you never run out of ideas.', 'You are a content strategist with 10 years of experience helping creators and small businesses build consistent, engaging social media presences.

I need a full content pillar strategy for my account. Here are my details:

MY NICHE: [e.g., personal finance for young Ghanaians / African fashion / fitness for busy mums]
MY PLATFORMS: [e.g., Instagram, TikTok, Facebook]
MY GOAL: [e.g., grow followers / sell my product / build my personal brand / become a thought leader]
MY TARGET AUDIENCE: [describe in 2–3 sentences who they are, what they struggle with, what they want]
HOW OFTEN I CAN POST: [e.g., 3x per week / daily / 5x per week]

Deliver the following:
1. 5 Content Pillars — name each one, explain its purpose (1–2 sentences), and give 5 specific post ideas per pillar (total: 25 post ideas)
2. A weekly posting schedule showing which pillar to post on which day
3. 3 "content series" ideas (recurring formats like "Monday Motivation" or "Tip of the Week") that build loyal followers
4. The single most important content type for my niche and why

Format clearly with headers for each pillar.', '💡 PRO TIP: Save this output and refer to it every week. It will keep you consistent for months.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 4, 'The Reel/TikTok Script Writer', 'Get a full, ready-to-film short video script with hook, body, and CTA.', 'You are a viral short-form video scriptwriter who has written scripts for creators with millions of followers on TikTok and Instagram Reels. You understand pacing, hooks, and retention.

Write a complete short-form video script for the following:

TOPIC: [e.g., 3 money mistakes that keep people broke / how to start a business with no capital / a simple habit that changed my life]
MY NICHE: [e.g., finance / motivation / fashion / comedy / fitness]
VIDEO LENGTH TARGET: [e.g., 30 seconds / 60 seconds / 90 seconds]
MY STYLE: [e.g., talking to camera / voiceover with text on screen / educational with examples / storytelling]
TARGET AUDIENCE: [who is watching this video]

Structure the script as follows:
- HOOK (0–3 seconds): One sentence that grabs attention immediately — controversial, surprising, or a bold promise
- PROBLEM/SETUP (3–15 seconds): Establish why this matters to the viewer
- MAIN CONTENT (15–50 seconds): The core value — broken into 3 clear, fast-moving points or a tight story arc
- PATTERN INTERRUPT (if 60s+): A moment that re-engages viewers who are about to swipe away
- CTA (last 5 seconds): One clear action for the viewer to take

Also provide:
- 3 alternative hook options
- On-screen text suggestions for key moments
- Recommended background music mood (e.g., upbeat, dramatic, lo-fi)', '💡 PRO TIP: Film the hook 5 different ways and A/B test which one performs best before publishing the full video.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 5, 'The Comment-Bait Post', 'Write a post specifically designed to generate a flood of comments and boost reach.', 'You are a social media engagement specialist who understands platform algorithms. You know that comments are the most valuable engagement metric and you craft posts that make people feel compelled to respond.

Write a high-comment-generating post for my social media:

PLATFORM: [Instagram / Facebook / Twitter/X / LinkedIn]
MY NICHE: [e.g., relationships / money / food / travel / motivation / fitness]
POST FORMAT: [e.g., opinion/debate / fill in the blank / this or that / personal story with a question / controversial take]
MY AUDIENCE: [describe your followers briefly]
TOPIC AREA: [e.g., relationships, money habits, career choices, lifestyle preferences]

The post must:
1. Open with a hook that triggers a strong opinion or personal memory
2. Include a clear, easy-to-answer question at the end that requires a one-word or short answer (lowers the barrier to comment)
3. Use a secondary "tag someone" or "share if you agree" prompt
4. Be conversational and feel human — not corporate or stiff
5. Be between 50–120 words (short enough to read fully before commenting)

Also suggest: the best time of day to post this for maximum early engagement.', '💡 PRO TIP: Reply to every comment within the first 30 minutes. The algorithm rewards posts where the creator is active.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 6, 'The Brand Voice Definer', 'Establish a consistent, memorable voice for all your content so every post sounds like YOU.', 'You are a brand strategist who helps content creators and businesses develop a distinctive, consistent voice that builds loyal audiences.

Help me define my brand voice based on the following:

MY NAME/BRAND NAME: [your name or business name]
WHAT I DO: [describe your content or business in 2 sentences]
3 WORDS THAT DESCRIBE MY PERSONALITY: [e.g., bold, warm, funny / serious, expert, trustworthy / playful, creative, inspiring]
BRANDS OR CREATORS I ADMIRE AND WHY: [name 2–3 and what you like about their voice]
WHAT I NEVER WANT TO SOUND LIKE: [e.g., corporate / preachy / try-hard / boring]
MY AUDIENCE: [who reads/watches my content]

Deliver:
1. My Brand Voice Statement (2–3 sentences that capture how I sound)
2. 5 Voice Characteristics — each with a name, a one-line description, and a DO vs DON''T example
3. My Vocabulary Guide — 10 words/phrases I should use often vs 10 I should never use
4. A sample caption rewritten in my brand voice (provide a generic caption and show the before/after)
5. A one-paragraph "tone of voice" guide I can share with anyone writing content for me', '💡 PRO TIP: Print this out and review it before writing any piece of content. Consistency is what builds recognition.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 7, 'The Carousel Post Planner', 'Build a full multi-slide carousel post that educates, engages, and converts followers.', 'You are a social media educator who specialises in carousel posts — the highest-saving content format on Instagram. You know how to structure information for maximum saves and shares.

Plan a complete carousel post on the following:

TOPIC: [e.g., 7 habits of financially free people / how to meal prep in 1 hour / the anatomy of a perfect CV]
MY NICHE: [your content area]
NUMBER OF SLIDES: [5 / 7 / 10]
GOAL OF THIS POST: [educate / promote a product or service / grow followers / build trust]
TARGET AUDIENCE: [who will read this]

For each slide, provide:
- SLIDE NUMBER & TITLE (short, punchy — max 6 words)
- HEADLINE TEXT: The main message of the slide (1–2 lines, large text)
- BODY TEXT: Supporting copy (2–4 lines, smaller text)
- VISUAL DIRECTION: What to show on this slide (illustration, icon, photo type, colour suggestion)

Also provide:
- The cover slide (Slide 1) headline — make it so compelling they MUST swipe
- The last slide CTA (what action to drive)
- The caption for the post (hook + 3 lines + CTA + hashtag categories)', '💡 PRO TIP: The cover slide (Slide 1) is everything. Spend 50% of your creative energy on that one headline.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 8, 'The Twitter/X Thread Builder', 'Write a full Twitter/X thread that goes viral by delivering real value in a gripping format.', 'You are a Twitter/X growth strategist who has written threads that reached millions of impressions. You understand the mechanics of what makes a thread go viral: a killer opening tweet, fast-paced insights, and a strong finish.

Write a complete Twitter/X thread on the following topic:

TOPIC: [e.g., how I went from broke to saving 30% of my income / 10 things I wish I knew before starting a business / the psychology of why people stay poor]
MY NICHE: [finance / entrepreneurship / self-improvement / tech / lifestyle]
THREAD LENGTH: [8 tweets / 12 tweets / 15 tweets]
MY GOAL: [go viral / grow followers / drive traffic to my product / establish expertise]

Structure the thread as:
- TWEET 1 (The Hook): A bold, specific claim or promise. Must make someone stop scrolling. End with "A thread 🧵"
- TWEETS 2–[N-1] (The Body): Each tweet = one tight, valuable insight. Number them (2/, 3/, etc.). Use line breaks for readability. Short sentences. No fluff.
- TWEET [N-1] (The Re-hook): Remind people why they started reading. "If you''ve read this far..."
- TWEET [N] (The Close): Summarise the key takeaway + one clear CTA (follow, retweet, reply with X)

Rules: No tweet exceeds 280 characters. Every tweet must stand alone as interesting. Use numbers and specifics, not vague advice.', '💡 PRO TIP: Post your thread at 7–9am or 6–8pm on weekdays. Reply to every comment in the first hour to boost reach.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 9, 'The Blog Post Generator', 'Produce a complete, SEO-ready blog post on any topic that ranks and gets read.', 'You are an experienced content writer and SEO specialist who writes blog posts that rank on Google and keep readers engaged until the final sentence. You write in a clear, human voice — never robotic or overly formal.

Write a complete blog post with the following specifications:

TOPIC: [your blog post topic]
PRIMARY KEYWORD TO RANK FOR: [the exact phrase people search on Google]
SECONDARY KEYWORDS: [2–3 related phrases to include naturally]
BLOG NICHE: [finance / lifestyle / business / health / travel / tech / etc.]
TARGET READER: [who is reading this — their age, interest, problem they''re trying to solve]
DESIRED WORD COUNT: [800 / 1200 / 1500 / 2000 words]
TONE: [conversational / professional / motivational / educational]

Deliver the full post with:
1. SEO Title (under 60 characters, includes primary keyword)
2. Meta Description (under 155 characters, includes keyword, drives clicks)
3. Introduction (hook + problem + promise of what the article delivers)
4. [3–5 H2 sections with H3 subpoints where needed]
5. A practical example or case study in at least one section
6. A conclusion with a clear takeaway
7. A CTA at the end (subscribe, comment, read another post, etc.)

Do not use filler phrases like "In today''s fast-paced world." Get straight to the point.', '💡 PRO TIP: After generating, ask the AI: ''Now rewrite the introduction to be more personal and story-driven.'' It will be dramatically better.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 10, 'The Content Repurposing Engine', 'Turn one piece of content into 8 different posts across multiple platforms instantly.', 'You are a content repurposing strategist who helps creators get maximum output from minimum input. You understand how the same idea must be reshaped differently for each platform''s format and audience expectations.

I have the following piece of content that I want to repurpose:

ORIGINAL CONTENT: [paste your blog post, video transcript, podcast notes, or main idea here]
MY PLATFORMS: [Instagram / TikTok / Twitter/X / Facebook / LinkedIn / WhatsApp Status — tick all that apply]
MY NICHE: [your content area]
MY GOALS: [grow audience / sell product / build authority / drive traffic]

Repurpose this content into ALL of the following formats:
1. Instagram Caption (engaging, with hook + CTA + 10 hashtags)
2. Instagram Carousel Outline (5 slides — title + one key point per slide)
3. TikTok/Reels Script (30–45 second script with hook, 3 points, CTA)
4. Twitter/X Thread (5 tweets — hook + 3 insights + CTA)
5. Facebook Post (conversational, slightly longer, ends with a question)
6. LinkedIn Post (professional tone, insight-led, ends with a question for professionals)
7. WhatsApp Status (3 short status updates — punchy, 1–2 lines each)
8. Email Newsletter Opening Paragraph (personal, direct, sets up a story)

Keep the core message consistent but adapt the tone, length, and format for each platform.', '💡 PRO TIP: Do this with every long piece of content you create. One video or article should fuel 2 weeks of social posts.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 11, 'The YouTube Video Title Optimizer', 'Generate 10 high-click-rate YouTube titles for any video topic.', 'You are a YouTube SEO strategist who has optimised titles for channels across multiple niches. You understand the psychology of clicks: curiosity gaps, specific numbers, emotional triggers, and search intent.

Generate 10 optimised YouTube video titles for the following:

VIDEO TOPIC: [describe what your video is about in 2–3 sentences]
MY CHANNEL NICHE: [e.g., personal finance / cooking / comedy / business / lifestyle]
MY TARGET AUDIENCE: [who watches my channel]
VIDEO TYPE: [tutorial / story / listicle / opinion / review / challenge / documentary-style]
PRIMARY KEYWORD (what people search to find this): [e.g., "how to save money in Ghana" / "keto meal prep"]

For each of the 10 titles:
- Write the title (max 60 characters)
- Rate it out of 10 for clickability and explain why in one sentence
- Tag it as: [SEO-DRIVEN] / [CURIOSITY] / [EMOTIONAL] / [NUMBER-BASED] / [STORY]

Then select your TOP 3 and explain which to use first and why.

Rules: No clickbait that doesn''t deliver. Every title must accurately represent the video content.', '💡 PRO TIP: Test your top 2 titles using YouTube''s A/B title testing feature (available to channels with 1000+ subscribers).');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 12, 'The YouTube Description Writer', 'Write a full, SEO-optimised YouTube description that ranks and converts viewers.', 'You are a YouTube SEO expert. Write a complete, optimised video description for the following:

VIDEO TITLE: [your video title]
VIDEO TOPIC SUMMARY: [what the video covers — 3–5 sentences]
PRIMARY KEYWORD: [main search term]
SECONDARY KEYWORDS: [2–3 related search phrases]
MY CHANNEL NICHE: [your content area]
LINKS TO INCLUDE: [e.g., my website, product, social media, free download — list them]
CHAPTERS/TIMESTAMPS: [list your main sections and approximate times, e.g., 0:00 Intro, 1:30 Main Point 1, etc.]

Write the description in this format:
- First 2–3 lines (appear before "Show More"): Hook — what the viewer will learn or gain. Must include primary keyword naturally.
- Paragraph 2: Expand on the video''s value with secondary keywords woven in naturally
- Chapters/Timestamps section (formatted for YouTube auto-chapters)
- Resources Mentioned section with links
- Connect With Me section with social links
- Relevant tags list (20 tags, comma separated)

Length: 250–400 words. Natural language only — no keyword stuffing.', '💡 PRO TIP: The first 125 characters are what show in search results. Make them count — include your keyword and a benefit.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 13, 'The Podcast Episode Outline', 'Plan a full podcast episode with talking points, questions, and segment structure.', 'You are a podcast producer who has helped launch and grow shows across multiple categories. You know how to structure episodes that keep listeners engaged from intro to outro.

Create a complete episode outline for the following:

PODCAST NAME: [your show name]
EPISODE TOPIC: [what this episode is about]
EPISODE TYPE: [solo / interview / co-hosted / panel]
IF INTERVIEW — GUEST NAME & BACKGROUND: [who you''re interviewing and their expertise]
TARGET LISTENER: [who listens to your podcast]
EPISODE LENGTH TARGET: [20 min / 30 min / 45 min / 60 min]
KEY TAKEAWAY: [the one thing listeners must leave with]

Deliver:
1. Episode Title (punchy, searchable, max 60 characters)
2. Episode Description (150 words, for show notes and podcast directories)
3. Intro Script (30–45 seconds — host intro, episode hook, what the listener will gain)
4. Segment-by-Segment Outline:
   - Segment name, time allocation, talking points (3–5 bullets), transition line to next segment
5. If interview: 12 interview questions ranging from warm-up → deep insight → controversial → actionable
6. Outro Script (30 seconds — summary, CTA, thank you)
7. 5 social media clips to pull from this episode (timecode area + why it will perform)', '💡 PRO TIP: Record your intro and outro last — after the main content, you will know exactly what to reference.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 14, 'The Newsletter Edition Writer', 'Write a complete email newsletter edition that people actually open, read, and click.', 'You are an email newsletter strategist and copywriter. You write newsletters that subscribers look forward to receiving — not the ones they delete without opening.

Write a complete newsletter edition with the following details:

NEWSLETTER NAME: [your newsletter name]
EDITION THEME/TOPIC: [the main topic or story for this issue]
MY NICHE: [finance / lifestyle / business / self-improvement / etc.]
SUBSCRIBER PROFILE: [who reads your newsletter — their interests and goals]
NUMBER OF SECTIONS: [2 / 3 / 4]
CTA THIS EDITION: [what you want readers to do — click a link, buy, reply, share, etc.]
TONE: [personal and conversational / informative and sharp / motivational / a mix]

Deliver the full newsletter with:
1. Subject Line (A/B options — write 3, rate each for open rate potential)
2. Preview Text (max 90 characters — what appears after the subject in the inbox)
3. Opening Paragraph: A personal, story-driven hook — feels like a letter from a friend, not a broadcast
4. [2–4 sections based on your input] — each with a bold headline and 100–200 words of engaging content
5. One "Quick Win" or "Tip of the Week" box — a short, actionable insight
6. Closing paragraph — warm, personal, signs off with personality
7. PS line — (often the most-read part of an email) — use it to reinforce the CTA', '💡 PRO TIP: Your subject line determines 80% of your open rate. Always test 2 subject lines if your email platform allows it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 15, 'The Product Launch Announcement Post', 'Write a social media post announcing a new product, service, or offer that drives immediate action.', 'You are a launch copywriter who specialises in social media announcements that create buzz, urgency, and sales. You understand the psychology of launch: excitement, FOMO, social proof, and clear offers.

Write a product/service launch post for the following:

WHAT I AM LAUNCHING: [describe your product or service clearly]
PRICE: [the price or pricing tiers]
WHO IT IS FOR: [your ideal customer]
THE MAIN PROBLEM IT SOLVES: [what pain point does it address]
THE KEY BENEFIT: [what transformation does the customer get]
LAUNCH DATE/OFFER DEADLINE: [when it launches or when an early-bird offer expires]
PLATFORM: [Instagram / Facebook / Twitter/X / LinkedIn / WhatsApp]

Write the post with:
1. HOOK: An opening line that makes the target customer stop and pay attention
2. THE PROBLEM: 2–3 lines that describe the pain point so well, readers feel seen
3. THE SOLUTION: Introduce your product as the answer — focus on outcome, not features
4. WHAT''S INCLUDED: 3–5 bullet points of key features/deliverables (benefit-focused, not technical)
5. SOCIAL PROOF LINE: A line referencing results, testimonials, or your credibility (real or placeholder)
6. URGENCY/SCARCITY: Why they should act now
7. CLEAR CTA: Exactly where to go and what to do (link, DM, comment)

Also write a shorter 50-word version for Stories/Status.', '💡 PRO TIP: Post this announcement 3 times: launch day, 48 hours later (with a testimonial), and 24 hours before close.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 16, 'The Motivational Quote Post', 'Generate 20 original, shareable motivational quotes tailored to your niche.', 'You are a copywriter who creates original, shareable quotes for content creators and brands. Your quotes feel fresh and specific — not recycled clichés.

Generate 20 original motivational quotes for the following:

MY NICHE: [e.g., personal finance / entrepreneurship / fitness / relationships / student life]
MY AUDIENCE: [who follows me — their age range, struggles, aspirations]
TONE: [bold and direct / warm and encouraging / witty and sharp / deeply philosophical]
THEMES TO COVER: [e.g., money mindset, starting over, consistency, fear, hard work, self-belief]

For each quote:
- Write the quote (original, max 25 words)
- Suggest a visual style for the graphic (e.g., dark background with gold text / minimalist white / bold typography on a photo)
- Tag it: [Shareable] / [Saves] / [Comments] based on its likely engagement type

Rules:
- No clichés (no "hustle harder", "be the change", "rise and grind")
- Every quote must be specific enough to belong to my niche, not generic
- At least 5 quotes should be provocative enough to spark a debate or strong agreement', '💡 PRO TIP: Post your most provocative quote first. Controversy (done respectfully) drives shares better than inspiration.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 17, 'The Behind-the-Scenes Post', 'Write an authentic behind-the-scenes post that builds trust and humanises your brand.', 'You are a personal brand strategist who understands that authenticity drives loyalty. You help creators write "behind-the-scenes" content that makes followers feel like insiders and builds deep trust.

Write a behind-the-scenes post for my social media:

WHAT I AM SHOWING BEHIND-THE-SCENES OF: [e.g., my content creation process / a product I''m building / my daily work routine / a challenge I faced this week / how I prepare for a launch]
MY NICHE: [your content area or business]
MY AUDIENCE: [who follows you]
LESSON OR VALUE I WANT TO SHARE: [what should my audience take away from seeing this]
PLATFORM: [Instagram / Facebook / TikTok / LinkedIn]

Write the post to include:
1. An opening that invites the audience in ("I don''t usually show this, but...")
2. A genuine story or description of what''s happening behind the scenes — specific details, real emotions, not a highlight reel
3. A struggle, mistake, or imperfect moment — this is what creates relatability
4. The lesson or insight this experience taught you or reinforced
5. A question that invites your audience to share their own experience
6. Tone: Warm, honest, slightly vulnerable — this should feel like a diary entry, not a press release', '💡 PRO TIP: People follow people, not polished brands. The more real and specific this post is, the more it will resonate.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 18, 'The Testimonial Request Message', 'Write a message to send to happy customers or followers asking for a testimonial or review.', 'You are a customer relationship specialist who knows how to ask for testimonials in a way that feels natural, not transactional, and gets the best possible response.

Write a testimonial request message for the following situation:

WHO I AM ASKING: [e.g., a customer who bought my product / a client I completed a project for / a follower who said something nice about my content]
WHAT THEY EXPERIENCED: [briefly describe what they bought, used, or benefited from]
PLATFORM FOR THE TESTIMONIAL: [e.g., Google review / Instagram DM / a written quote I can use on my website / a video testimonial]
MY RELATIONSHIP WITH THEM: [e.g., first-time customer / repeat client / long-time follower]
MY TONE: [warm and personal / professional / casual and friendly]

Write:
1. The main request message (150–200 words) — conversational, grateful, specific about what to share, and easy to respond to
2. 3 guiding questions they can answer to make writing the testimonial easy (e.g., "What was your situation before?", "What specifically helped you?", "What would you tell someone considering this?")
3. A short follow-up message if they don''t respond within 5 days
4. A thank-you message to send after they submit the testimonial', '💡 PRO TIP: The easier you make it for them, the better testimonial you will get. Give them the 3 questions — people love a framework.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 19, 'The Faceless Content Script', 'Write a full voiceover script for a faceless video — no camera required.', 'You are a scriptwriter for faceless YouTube and TikTok channels. You craft voiceover scripts that are engaging, educational, and hold viewer attention without a person on screen.

Write a complete faceless video voiceover script for:

TOPIC: [e.g., the history of money / 5 passive income streams / how compound interest works / the psychology of impulse buying]
VIDEO LENGTH: [60 seconds / 2 minutes / 3–5 minutes / 8–10 minutes]
MY CHANNEL NICHE: [finance / history / science / self-improvement / business / true crime / etc.]
VISUAL STYLE: [stock footage / animated text / infographic-style / screen recordings / illustrated]
TONE: [documentary / educational and friendly / dramatic and cinematic / casual explainer]
TARGET AUDIENCE: [who watches this type of content]

Deliver:
1. Full voiceover script — written exactly as it should be spoken. Natural sentences. Short paragraphs. Paced for the target video length.
2. [VISUAL NOTE] tags throughout the script suggesting what visuals to show at each point
3. [PAUSE] tags where the narrator should breathe or slow down for emphasis
4. Hook (first 5 seconds) — written to prevent the viewer from clicking away
5. Recommended background music mood for each section
6. End screen suggestion (what to say in the final 10 seconds to drive subscriptions or clicks)', '💡 PRO TIP: Read the script aloud before recording. If it sounds unnatural when you say it, rewrite those parts to flow better.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 20, 'The Social Media Bio Writer', 'Write a compelling social media bio for any platform that attracts the right followers.', 'You are a personal brand copywriter who specialises in writing social media bios that communicate value instantly and convert profile visitors into followers.

Write bios for my social media profiles based on:

MY NAME: [your name or brand name]
WHAT I DO: [describe your content, business, or expertise in 1–2 sentences]
WHO I HELP: [your target audience — be specific]
MY UNIQUE ANGLE: [what makes you different from others in your niche]
MY KEY OFFER OR CONTENT PROMISE: [what someone gets by following you]
MY CTA: [e.g., "Download my free guide," "Book a call," "Shop my store," "New videos every week"]
KEYWORDS FOR MY NICHE: [2–4 words people search to find accounts like yours]

Write optimised bios for ALL of these platforms:
1. Instagram (150 characters max — punchy, line-broken for readability, includes emoji strategically, ends with CTA)
2. TikTok (80 characters max — simple, personality-driven, includes hook)
3. Twitter/X (160 characters — clever, human, searchable)
4. YouTube (1000 characters — more space, SEO-friendly, describes your content promise)
5. LinkedIn (220 characters for tagline + 2000 characters for About section — professional, achievement-led)
6. Facebook Page (255 characters — clear and benefit-focused)

For each, explain in one sentence why the bio is written that way.', '💡 PRO TIP: Update your bio every 3 months. As your content evolves, your bio should reflect your current offer and audience.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 21, 'The Collaboration Pitch', 'Write a professional DM or email to pitch a brand deal, collab, or partnership.', 'You are a talent manager and brand partnership strategist. You write outreach messages that get responses because they are specific, confident, and immediately communicate value to the recipient.

Write a collaboration pitch for the following:

MY NAME/HANDLE: [your name and social media handle]
MY NICHE: [your content area]
MY PLATFORM & STATS: [e.g., Instagram — 8,000 followers, avg. 400 likes per post, 12% engagement rate]
MY AUDIENCE PROFILE: [who follows you — age range, interests, location, income level if relevant]
WHO I AM PITCHING TO: [brand name / creator name / business type]
WHAT I WANT: [paid partnership / product exchange / content collab / affiliate deal / shoutout swap]
WHAT I OFFER THEM: [be specific — reach, content quality, audience alignment, conversion rate if known]
PLATFORM FOR THE MESSAGE: [email / Instagram DM / LinkedIn]

Write:
1. The subject line (for email) or opening line (for DM) — specific, not generic
2. The main pitch (150–250 words) — who you are, your audience, the specific opportunity, why it''s good for them
3. Social proof paragraph — results, engagement, past collabs if any
4. Clear ask — exactly what you''re proposing with next steps
5. Professional sign-off
6. A shorter 80-word DM version for Instagram', '💡 PRO TIP: Always research the brand before pitching. Reference something specific about them — it shows you''re not copy-pasting.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 22, 'The Content Calendar Builder', 'Generate a full 30-day social media content calendar with topics, formats, and captions.', 'You are a social media manager who builds content calendars for busy creators and small businesses. You understand content variety, platform best practices, and the balance between value, personality, and promotion.

Build a 30-day content calendar for me:

MY NICHE: [your content area]
PLATFORMS: [list all platforms you post on]
POSTING FREQUENCY: [how many times per week per platform]
MY GOALS THIS MONTH: [e.g., grow followers by X% / launch a product / build email list / increase engagement]
MY CONTENT PILLARS: [list your 3–5 core content themes]
PRODUCTS/SERVICES TO PROMOTE: [what you''re selling or want to promote, if anything]
UPCOMING DATES/EVENTS: [holidays, local events, personal milestones relevant to your content]

Deliver:
1. A 30-day calendar in table format: Day | Date | Platform | Content Pillar | Format | Topic/Title | Caption Hook (first line only)
2. 4 "anchor posts" (one per week) — your best content of the week that drives the most value
3. Promotion schedule — which days to mention your product/service (rule of thumb: max 20% of posts)
4. 3 engagement posts (designed to get comments and conversations going)
5. Batch filming/writing suggestions — which posts to create in one session to save time', '💡 PRO TIP: Batch-create content on one day per week. Creators who schedule in advance are 3x more consistent than those who post in the moment.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 23, 'The Niche Authority Post', 'Write an in-depth educational post that positions you as the go-to expert in your niche.', 'You are a thought leadership strategist who helps content creators become the recognised authority in their space. You write content that teaches so well, readers share it with others and remember who wrote it.

Write an authority-building educational post for:

MY NICHE: [your content area]
TOPIC: [the specific concept, skill, or insight you want to teach]
MY TARGET AUDIENCE: [who will read this — their knowledge level on this topic]
PLATFORM: [Instagram carousel / LinkedIn article / blog post / Facebook post / Twitter thread]
FORMAT: [choose one: list / step-by-step / myth-busting / framework / case study / comparison]

The post must:
1. Open with a bold claim or counterintuitive insight that challenges what most people believe
2. Deliver at least 3–5 specific, actionable insights — not surface-level tips, but things most people do not know
3. Use a real example, story, or analogy to make abstract concepts concrete
4. Address the most common mistake or misconception about this topic
5. End with a framework, checklist, or memorable model the reader can keep and apply
6. Be written at a level that makes even beginners feel smart, not confused

Length: Enough to fully educate — do not cut corners for brevity.', '💡 PRO TIP: Save this post as a template and update it every 6 months with new examples. Evergreen educational content compounds over time.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 24, 'The Giveaway Post', 'Write a giveaway post that drives maximum entries, followers, and shares.', 'You are a social media growth strategist who uses giveaways to create rapid follower growth and engagement spikes. You design giveaways that attract the RIGHT audience — not random followers who unfollow after.

Write a giveaway post for the following:

PRIZE: [what you are giving away — be specific about the value]
ENTRY REQUIREMENTS: [e.g., follow + like + tag 2 friends / follow + share to story / comment your answer]
DURATION: [how many days the giveaway runs]
MY NICHE: [your content area — this ensures the prize attracts relevant followers]
PLATFORM: [Instagram / Facebook / Twitter/X]
GOAL: [grow followers / increase engagement / promote a product / reward existing audience]

Write:
1. The announcement post — exciting, clear, visually descriptive (write it as if we see the prize)
2. Rules in a clean, numbered format (easy to read at a glance)
3. A urgency/mid-giveaway reminder post (for day 2 or 3)
4. The winner announcement post template
5. A "you didn''t win but..." post for non-winners that converts them into customers or engaged followers
6. 3 story slides to promote the giveaway

Include the hashtag strategy (5–8 giveaway-specific hashtags).', '💡 PRO TIP: Make one of the entry requirements to ''save this post'' — it signals value to the algorithm and keeps your post alive longer.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 25, 'The Personal Story Post', 'Write a personal story post that builds deep connection with your audience.', 'You are a narrative content strategist who knows that personal stories are the most powerful connection tool in social media. You craft stories that are honest, relatable, and always tied to a lesson that benefits the reader.

Write a personal story post based on the following:

THE STORY I WANT TO SHARE: [describe the experience — what happened, when, how it made you feel, what changed]
THE LESSON OR INSIGHT from this story: [what do you want your audience to take away]
MY NICHE: [your content area — so the lesson is relevant to your audience]
MY AUDIENCE: [who is reading this]
PLATFORM: [Instagram / Facebook / LinkedIn / Twitter/X]
TONE: [vulnerable and raw / reflective and wise / humorous / inspiring]

Structure the post as:
1. THE HOOK: A first line that makes someone stop — a surprising fact, a vulnerable moment, an unusual admission
2. THE SETUP: Paint the scene. Who were you? What was happening? Give specific details — a real time, real place, real feeling.
3. THE TURNING POINT: What happened that changed things? What mistake did you make, lesson did you learn, or moment broke you open?
4. THE LESSON: Zoom out. What does this mean for your reader? Connect your story to their experience.
5. THE INVITATION: End with a question or prompt that invites them to share their own story

Length: 250–400 words. Read it as if writing a page in your diary — then edit for clarity.', '💡 PRO TIP: The most shared posts on social media are ones where someone reads it and thinks ''this is exactly my life.'' Be specific — specific details create universal connection.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 26, 'The Poll & Quiz Post', 'Create interactive poll and quiz content to explode your engagement rate.', 'You are a social media engagement specialist. Create a set of interactive poll and quiz posts for my account.

MY NICHE: [your content area]
MY AUDIENCE: [who follows you]
PLATFORM: [Instagram / Facebook / Twitter/X / LinkedIn]
NUMBER OF POLLS/QUIZZES NEEDED: [5 / 10 / 15]
THEMES: [list 2–3 themes relevant to your niche, e.g., money habits, lifestyle choices, knowledge tests]

For each poll/quiz, provide:
1. The question (clear, concise, sparks an opinion or tests knowledge)
2. The answer options (2–4 options — make at least one surprising or provocative)
3. The "reveal" or follow-up comment to post after voting closes (the correct answer or your take)
4. Tag: [Opinion Poll] / [Knowledge Quiz] / [This or That] / [Would You Rather]
5. Best platform format to use (Instagram Stories poll sticker / Twitter poll / Facebook poll / etc.)

Rules: Every question must feel like something people genuinely want to answer. No boring corporate questions. Make them fun, niche-specific, and slightly unpredictable.', '💡 PRO TIP: Post polls on weekdays between 12pm–2pm or 6pm–8pm for highest participation rates.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 27, 'The Comparison Post', 'Write a ''this vs that'' comparison post that educates and drives shares.', 'You are a content educator who excels at making complex comparisons simple and shareable. You write comparison content that helps audiences make better decisions.

Write a comparison post for the following:

THING A vs THING B: [e.g., saving vs investing / freelancing vs 9-to-5 / Instagram vs TikTok for growth / online business vs physical business]
MY NICHE: [your content area]
MY AUDIENCE''S LIKELY CONFUSION OR DEBATE: [what specifically do they argue about or misunderstand about these two things]
PLATFORM & FORMAT: [Instagram carousel / Twitter thread / blog post / Facebook post]
MY ANGLE: [neutral comparison / I favour one side and why / let the audience decide]

Structure the comparison as:
1. Hook: A bold opening that establishes why this comparison matters RIGHT NOW
2. Quick Definition: One line each to define both options (for those unfamiliar)
3. Comparison Table or Side-by-Side: 5–7 key criteria compared (e.g., cost, time, risk, reward, skill required, who it suits)
4. The Nuance Section: "It depends on..." — when each option is the right choice
5. Common Myths: One myth about each option, debunked in 2 sentences
6. My Take / The Verdict: A clear recommendation based on your audience''s typical situation
7. CTA: Which do you prefer? Comment below.', '💡 PRO TIP: Comparison posts save better than almost any other format. Put your best comparison into a carousel for maximum saves.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 28, 'The Community Challenge Post', 'Launch a community challenge that gets your audience active and creates user-generated content.', 'You are a community-building strategist who creates challenges that go viral because they are simple to participate in, fun to share, and tied to a meaningful outcome.

Design a social media challenge for my audience:

MY NICHE: [your content area]
MY AUDIENCE: [who follows you — their lifestyle and goals]
CHALLENGE GOAL: [e.g., build a habit / create content / learn a skill / achieve a small win]
CHALLENGE DURATION: [3 days / 7 days / 14 days / 30 days]
PLATFORM: [Instagram / TikTok / Facebook / Twitter/X]

Deliver:
1. Challenge Name (catchy, memorable, includes a hashtag version e.g., #7DayMoneyChallenge)
2. Challenge Concept (explain the challenge in 2 sentences — simple enough that anyone can join)
3. Daily Tasks: Day-by-day breakdown of what participants do each day
4. The Launch Post: Announcement caption with rules, prize (if any), and how to participate
5. Daily Reminder Post Template: A short post to keep participants going each day
6. The UGC Prompt: What should participants post/share to create user-generated content around your challenge
7. Wrap-Up Post: How to celebrate completers and announce what''s next', '💡 PRO TIP: Keep challenges short (7 days max for first-timers). Simple daily tasks with big cumulative outcomes are the most powerful format.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 29, 'The Trending Audio/Sound Caption', 'Write a caption for a trending audio or sound on TikTok or Instagram Reels.', 'You are a viral content strategist who knows how to ride trending audio on TikTok and Instagram Reels to get massive reach. You understand that the caption + concept must perfectly match the audio''s vibe to work.

Write a caption and concept for using a trending sound:

TRENDING AUDIO/SOUND: [describe the audio — its name, mood, what kind of content it''s used for, or paste a description of what it sounds like]
MY NICHE: [your content area]
MY ANGLE OR TWIST: [how does this audio relate to my niche or audience — what''s my unique take?]
MY AUDIENCE: [who follows me]
VIDEO CONCEPT: [briefly describe what you''ll show on screen while the audio plays]

Provide:
1. The video concept explained in detail (what happens on screen, any text overlays)
2. The caption (hook + 2 lines + CTA) — must complement the video''s energy
3. 3 alternative angles or concepts using the same audio
4. Recommended hashtags (mix of trending + niche-specific)
5. Posting window: best time to post this before the trend peaks

Note: Write this assuming the audio is relevant as of [TODAY''S DATE]. Always verify the sound is still trending before posting.', '💡 PRO TIP: When you spot a trend, move within 24–48 hours. Trends have a 3–5 day peak window before engagement drops.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 30, 'The Sales Post (Soft Sell)', 'Write a post that promotes your product or service without feeling pushy or salesy.', 'You are a soft-sell copywriter who understands that today''s audience buys from people they trust, not from people who push products in their face. You write sales posts that feel like helpful advice, not advertising.

Write a soft-sell promotional post for:

PRODUCT/SERVICE: [what you are selling — describe it clearly]
TARGET CUSTOMER: [who this is for — their situation, problem, and desire]
THE TRANSFORMATION: [what changes in the customer''s life after buying this?]
PRICE POINT: [what does it cost]
WHERE TO BUY: [link, DM, website, etc.]
PLATFORM: [Instagram / Facebook / LinkedIn / Twitter/X]

Write the post using the "Story → Insight → Solution" framework:
1. STORY (40%): Start with a relatable story or scenario your target customer will recognise — a problem, a frustration, a moment of realisation. Do NOT mention your product yet.
2. INSIGHT (30%): Share a key insight that shifts how the reader thinks about the problem. This is where you add value and build trust.
3. SOLUTION (20%): Naturally introduce your product or service as the logical next step — not the hero of the story, but the tool that makes the transformation possible.
4. CTA (10%): One simple, low-pressure action (e.g., "If this resonates, the link is in my bio.")

Length: 200–300 words. No exclamation marks in the first half. No "BUY NOW" energy.', '💡 PRO TIP: The rule of thumb: educate 80% of the time, promote 20% of the time. This post belongs in that 20% — use it sparingly to maintain trust.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 31, 'The Audience Survey Post', 'Write a post that collects valuable information from your audience to shape your content and products.', 'You are an audience research strategist. Write a survey or feedback post that encourages maximum responses and collects genuinely useful data.

MY NICHE: [your content area]
WHAT I WANT TO LEARN FROM MY AUDIENCE: [e.g., what content they want more of / what problems they face / what they''d pay for / how they found me]
PLATFORM: [Instagram / Facebook / LinkedIn / Twitter/X]
FORMAT: [comment survey / poll / DM-based / link to Google Form]

Deliver:
1. The post (opening hook + why you''re asking + the questions)
2. 5–7 survey questions that are easy to answer and give you actionable data
3. An incentive to respond (if appropriate — e.g., "I''ll DM you a free resource if you answer")
4. A follow-up post template to share what you learned (builds trust and shows you listened)
5. How to analyse the responses to shape your next 30 days of content', '💡 PRO TIP: People love being asked for their opinion. A good survey post can get 10x your normal comment count.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 32, 'The ''Lessons Learned'' Post', 'Write a reflective post sharing hard-won lessons that adds value and builds credibility.', 'You are a personal brand strategist. Write a "lessons I''ve learned" post that showcases wisdom, builds credibility, and connects deeply with your audience.

TIME PERIOD OR EXPERIENCE: [e.g., 1 year of content creation / 3 years of entrepreneurship / my first year of saving / my university years]
MY NICHE: [your content area]
NUMBER OF LESSONS: [5 / 7 / 10]
MY AUDIENCE: [who follows you — what stage of the journey are they at]
TONE: [honest and raw / wise and reflective / humorous / motivating]
PLATFORM: [Instagram carousel / Twitter thread / LinkedIn / Facebook]

For each lesson:
1. The Lesson Title (punchy, 5 words max)
2. The Story Behind It (2–3 sentences of the real experience that taught you this)
3. The Practical Takeaway (what the reader should do differently because of this lesson)
4. A "wish I knew this earlier" line that makes the reader feel grateful for the insight

Open with: "I wish someone had told me this [X years ago / when I started / before I made these mistakes]..."
Close with: A question that invites followers to share their own lessons.', '💡 PRO TIP: Vulnerability + wisdom = the most shareable content formula. The more honest you are about your failures, the more people trust your successes.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 33, 'The Event/Webinar Promo Post', 'Promote a live event, webinar, workshop, or online class to drive maximum sign-ups.', 'You are an event marketing copywriter. Write a promotional post for my upcoming event that drives registrations with urgency and excitement.

EVENT NAME: [name of your event or webinar]
WHAT IT IS: [describe the format — live webinar / in-person workshop / online class / Q&A session]
DATE & TIME: [when is it happening]
TOPIC/WHAT ATTENDEES WILL LEARN: [key outcomes and takeaways]
WHO SHOULD ATTEND: [ideal attendee profile]
PRICE: [free / paid — if paid, state the price]
WHERE TO REGISTER: [link or how to sign up]
PLATFORM FOR THE POST: [Instagram / Facebook / LinkedIn / Twitter/X]

Write:
1. The main announcement post (200–300 words) — excitement + value + urgency + CTA
2. A 3-day countdown series: Day 3 reminder / Day 1 "last chance" post / Day-of "it''s happening" post
3. A Story sequence (3 slides) promoting the event
4. A DM template to personally invite engaged followers
5. Post-event follow-up post (for those who missed it) — how to stay connected or access a replay', '💡 PRO TIP: DM your top 10 most engaged followers personally to invite them. Personal invitations convert at 5–10x the rate of broadcast posts.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 34, 'The Myth-Busting Post', 'Write a high-engagement myth-busting post that positions you as the voice of truth in your niche.', 'You are a niche expert and content strategist. Write a myth-busting post that challenges false beliefs and builds your authority as someone who tells the truth.

MY NICHE: [your content area]
NUMBER OF MYTHS TO BUST: [3 / 5 / 7]
MY AUDIENCE: [who follows you — what false beliefs do they commonly hold]
PLATFORM & FORMAT: [Instagram carousel / Twitter thread / Facebook post / LinkedIn article]

For each myth:
1. THE MYTH (state it exactly as your audience believes it — use their language)
2. WHY PEOPLE BELIEVE IT (1–2 sentences on where this belief comes from)
3. THE TRUTH (the correct information — specific, evidence-based where possible)
4. PRACTICAL IMPLICATION (what should the reader do differently now that they know the truth)

Structure the full post with:
- Hook: "Stop believing these [X] lies about [topic]" — or a variation that creates immediate curiosity
- Each myth as its own section
- Closing: A statement that reframes their understanding and invites comments ("Which of these surprised you most?")

Tone: Confident and educational — you are correcting, not attacking.', '💡 PRO TIP: Myth-busting posts generate the most saves and shares because people want to share ''the truth'' with their network.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 35, 'The Year-in-Review Post', 'Write a compelling year-in-review post that celebrates growth and builds community.', 'You are a personal brand storyteller. Write a year-in-review or milestone post that celebrates achievements honestly and invites your community to celebrate with you.

YEAR OR PERIOD BEING REVIEWED: [e.g., 2025 / Q1 2026 / my first year of blogging / 2 years of business]
KEY WINS TO HIGHLIGHT: [list your 3–5 biggest achievements — numbers, milestones, breakthroughs]
HONEST STRUGGLES TO SHARE: [1–2 real challenges — what went wrong or was harder than expected]
LESSONS LEARNED: [2–3 key insights from this period]
WHAT''S COMING NEXT: [what you''re building toward in the next period]
MY AUDIENCE: [who follows you]
PLATFORM: [Instagram / Facebook / LinkedIn / Twitter/X]

Write:
1. The full reflective post (300–400 words) — structured as: Gratitude → Wins (specific) → Struggle (honest) → Lesson → What''s Next → Thank You to the community
2. A carousel version outline (8–10 slides)
3. A short 100-word version for Stories/Status
4. A "thank you" DM template to send to your most loyal followers

Tone: Warm, honest, grounded — neither boastful nor falsely humble.', '💡 PRO TIP: Tag specific people who helped you in your year-in-review. It turns a personal post into a community-building moment.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 36, 'The Lead Magnet Promo Post', 'Promote a free resource (ebook, checklist, template) to build your email list.', 'You are an email list growth strategist. Write a post promoting a free lead magnet that makes your audience desperate to download it.

LEAD MAGNET NAME: [what is the free resource called]
WHAT IT IS: [ebook / checklist / template / mini-course / swipe file / cheat sheet]
WHAT IT HELPS WITH: [the specific problem it solves or the outcome it delivers]
WHO IT''S FOR: [ideal downloader]
HOW TO GET IT: [DM me "WORD" / click link in bio / comment below / sign up at link]
PLATFORM: [Instagram / Facebook / LinkedIn / Twitter/X]

Write:
1. The promo post (150–200 words) — the problem → the tease → the reveal → the CTA
2. 3 alternative hooks for A/B testing which post performs best
3. A Story slide sequence (4 slides) promoting the lead magnet
4. An auto-reply DM template (what to send when someone requests it)
5. A follow-up reminder post for 48 hours later (for those who saw the first post but didn''t act)', '💡 PRO TIP: The word ''FREE'' in your hook increases click-through rates by up to 30%. Do not be shy about leading with it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 37, 'The Gratitude & Community Post', 'Write a genuine appreciation post that deepens your relationship with your audience.', 'You are a community-building specialist. Write a sincere gratitude post that makes your followers feel valued and deepens their loyalty to your brand.

MILESTONE OR REASON FOR GRATITUDE: [e.g., reached 5,000 followers / 1 year of posting / first product sale / my community helped me through a tough time]
MY NICHE: [your content area]
SPECIFIC THINGS I APPRECIATE ABOUT MY AUDIENCE: [what do they do that means the most to you — comments, shares, support, feedback, purchases]
PLATFORM: [Instagram / Facebook / Twitter/X / LinkedIn]
HOW I WANT TO CELEBRATE OR GIVE BACK: [e.g., free resource giveaway / AMA session / special discount / shoutout / nothing — just genuine thanks]

Write a post that:
1. Opens with a specific, genuine expression of gratitude — not a generic "thank you so much!"
2. References real things about your community that mean something to you
3. Shares a brief reflection on what this journey has meant to you
4. Highlights one or two community members (with permission) or the TYPE of person who makes up your community
5. States clearly how you''re giving back (if applicable)
6. Closes with an invitation — for them to share what the community means to THEM

Tone: Warm, personal, specific. This should feel like a handwritten note, not a press release.', '💡 PRO TIP: Gratitude posts with milestone numbers (e.g., ''5,000 of you'') consistently outperform regular posts. People love being part of a growing movement.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 38, 'The FAQ Post', 'Turn your most common questions into high-value educational content.', 'You are a content educator who helps creators turn frequently asked questions into engaging, authoritative content that serves their audience and drives new followers.

Create an FAQ content post based on:

MY NICHE: [your content area]
MY MOST COMMON QUESTIONS: [list 5–10 questions your audience asks you most frequently — in their exact words if possible]
MY AUDIENCE: [who asks these questions — their level of knowledge]
PLATFORM & FORMAT: [Instagram carousel / Twitter thread / blog post / Facebook post / YouTube video description]

For each question:
1. Restate the question clearly (as your audience would phrase it)
2. Answer it comprehensively in 3–6 sentences — no fluff, just the answer
3. Add one "but here''s what most people miss..." insight that goes beyond the basic answer
4. Tag: [Beginner] / [Intermediate] / [Advanced] based on the question level

Also write:
- An opening hook for the full post ("I get asked this every day...")
- A closing that invites more questions
- Suggestions for turning the top 3 FAQs into individual full posts', '💡 PRO TIP: Save all the questions your audience asks in your comments, DMs, and stories. This is your endless content goldmine.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 39, 'The Seasonal/Holiday Content Post', 'Write timely content tied to holidays, seasons, or cultural moments that boosts reach.', 'You are a cultural and seasonal content strategist who knows how to make timely content that rides the wave of shared cultural moments to reach new audiences.

Write seasonal/holiday content for:

HOLIDAY OR SEASONAL MOMENT: [e.g., Christmas / New Year / Ramadan / Valentine''s Day / Back to School / End of Year / Ghana Independence Day / Easter / Black Friday]
MY NICHE: [your content area]
MY AUDIENCE: [who follows you — their cultural context and values]
MY ANGLE: [how does this holiday connect to my niche? e.g., finance + New Year = money resolutions / fitness + Christmas = avoiding weight gain / business + Black Friday = sales strategy]
PLATFORM: [Instagram / Facebook / Twitter/X]

Deliver:
1. The main seasonal post (150–200 words) — ties the holiday to your niche in a meaningful, non-forced way
2. A greeting version (for pure goodwill, no agenda — 50 words)
3. A promotional version (if you''re running a seasonal offer — includes urgency and CTA)
4. A Story slide (3 slides) for the seasonal moment
5. 3 seasonal content ideas for the same holiday that you could post in the days leading up to it', '💡 PRO TIP: Start creating seasonal content 5–7 days before the event. Early posts get more reach because the algorithm promotes relevant content before the day.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (1, 'CONTENT CREATION', 40, 'The Comment-to-DM Funnel Post', 'Write a post that drives comments so you can DM responders and convert them to customers.', 'You are a social media sales funnel strategist who understands that comments are not just engagement — they are the entry point to 1-on-1 conversations that convert followers into customers.

Write a "comment-to-DM" funnel post for:

WHAT I WANT TO OFFER IN THE DM: [e.g., a free resource / a discount code / a consultation call / a product recommendation / a personalised tip]
MY NICHE: [your content area]
MY PRODUCT OR SERVICE (to eventually sell): [what you''re building toward]
PLATFORM: [Instagram / Facebook]

Write a post that:
1. Delivers genuine value upfront (a tip, insight, or mini-lesson relevant to your niche)
2. Offers a specific "bonus" that people can receive by commenting a keyword (e.g., "Comment ''GUIDE'' and I''ll send you my free 5-step plan")
3. Makes the barrier to entry extremely low (one word comment)
4. Sets up a DM conversation naturally — not a hard sales pitch

Also write:
- The DM opener to send to each commenter (personalised, not robotic)
- A 3-message DM sequence: welcome → value delivery → soft offer
- How to track and manage responses efficiently', '💡 PRO TIP: This is one of the highest-converting strategies on Instagram. A post with 200 keyword comments can lead to 15–30 conversations — and 3–8 sales.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 1, 'The Professional Email Writer', 'Write a polished, clear, and effective professional email for any business situation.', 'You are a senior business communication specialist with 15 years of experience writing high-stakes professional emails across corporate and entrepreneurial environments. You write emails that are read, respected, and acted upon.

Write a professional email for the following situation:

EMAIL PURPOSE: [e.g., following up on a proposal / requesting a meeting / responding to a complaint / introducing myself to a new client / asking for payment / declining a request professionally]
SENDER NAME & ROLE: [your name and your position or business]
RECIPIENT NAME & ROLE: [recipient''s name and their position/relationship to you]
KEY POINTS TO COMMUNICATE: [list the 2–4 main things this email must say]
DESIRED OUTCOME: [what should the recipient do after reading this email]
TONE: [formal / professional-friendly / assertive but respectful / empathetic]
URGENCY LEVEL: [routine / moderately urgent / time-sensitive]

Deliver:
1. Subject Line (clear, specific, action-oriented — max 60 characters)
2. Opening (greet + context — 1–2 sentences, no filler like "I hope this email finds you well")
3. Body (state your message clearly — use short paragraphs of 2–3 sentences max)
4. Request or Next Step (one clear ask — what do you need from them, by when)
5. Professional Close
6. Email Signature template

Rules: No paragraph longer than 3 sentences. No passive aggression disguised as politeness. Be direct.', '💡 PRO TIP: Before sending any professional email, re-read it and ask: ''Is there any line that could be misread?'' If yes, rewrite it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 2, 'The Business Proposal Writer', 'Create a compelling, professional business proposal that wins contracts and clients.', 'You are a senior proposal writer and business development consultant who has written proposals worth millions across multiple industries. You know that proposals are won on clarity, relevance, and trust — not length.

Write a complete business proposal for the following:

MY BUSINESS/SERVICE: [describe what you offer in detail]
POTENTIAL CLIENT: [who this proposal is for — their business, industry, size]
THE PROJECT OR SERVICE THEY NEED: [what specifically they have asked for or need]
MY PROPOSED SOLUTION: [how you will solve their problem or deliver the service]
MY UNIQUE ADVANTAGE: [why choose me over competitors — experience, approach, results]
TIMELINE: [how long the project will take]
INVESTMENT/PRICING: [your fee structure — fixed / hourly / milestone-based]
MY PAST RESULTS OR CREDENTIALS: [relevant experience, if any]

Write a complete proposal with these sections:
1. Executive Summary (100 words — the whole proposal in miniature)
2. Understanding of the Problem/Opportunity (show you understand their situation)
3. Proposed Solution (what you will do, step by step)
4. Scope of Work (deliverables — what they get exactly)
5. Timeline (broken into phases or milestones)
6. Investment (pricing, payment terms, what''s included and excluded)
7. Why Us (your credentials, differentiators, relevant past work)
8. Next Steps (clear, easy call to action)
9. Terms & Validity (proposal valid for X days)', '💡 PRO TIP: Proposals under 5 pages get read. Proposals over 10 pages get skimmed. Be comprehensive but ruthlessly concise.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 3, 'The Client Onboarding Email Sequence', 'Write a 3-email welcome sequence that sets the right expectations with new clients.', 'You are a client success manager who understands that the onboarding experience determines whether a client stays or leaves. You craft welcome sequences that make clients feel confident, informed, and excited.

Write a 3-email onboarding sequence for:

MY BUSINESS TYPE: [e.g., freelance designer / marketing agency / coaching service / product business / consulting firm]
WHAT THE CLIENT HAS PURCHASED/SIGNED UP FOR: [describe the service or product]
KEY INFORMATION NEW CLIENTS NEED TO KNOW: [process, timelines, how to reach you, what to prepare, what happens next]
MY BRAND TONE: [professional / warm and personal / efficient and direct]

EMAIL 1 — Welcome (sent immediately after signing):
- Subject: [write one]
- Content: Warm welcome + what they can expect + immediate next step (one action)

EMAIL 2 — Getting Started (sent 24 hours later):
- Subject: [write one]
- Content: How the process works (step-by-step) + what they need to provide or prepare + how to reach you + any relevant resources or documents

EMAIL 3 — Check-In (sent on Day 3 or 7):
- Subject: [write one]
- Content: How are things going / any questions / remind them of key milestone or upcoming step + reinforce confidence in the decision they made

Keep all emails under 300 words. Human and helpful — not robotic corporate speak.', '💡 PRO TIP: A great onboarding sequence reduces client anxiety and virtually eliminates refund requests. Invest time in this.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 4, 'The Meeting Request Email', 'Write a meeting request that gets a ''yes'' — whether from a client, partner, or executive.', 'You are a business development expert. Write a meeting request email that is concise, compelling, and makes it easy for the recipient to say yes.

WHO I''M REQUESTING A MEETING WITH: [name, title, company]
MY NAME & ROLE: [your name and what you do]
PURPOSE OF THE MEETING: [what you want to discuss or achieve]
VALUE TO THEM: [why is this meeting worth their time — what do they gain]
PROPOSED FORMAT: [video call / phone call / in-person / lunch meeting]
PROPOSED DURATION: [15 min / 30 min / 1 hour]
MY AVAILABILITY: [list 3 time options across different days]
HOW WE ARE CONNECTED (if applicable): [referral, mutual contact, previous interaction, found them online]

Write:
1. Subject line (specific, not "Quick Chat" — max 50 characters)
2. The email (under 150 words) — intro → purpose → value to them → ask → availability → easy reply instruction
3. A follow-up email to send 5 days later if no response
4. A confirmation email to send once they accept

Rules: Never use "I was wondering if maybe..." Be direct. Ask clearly. Make it easy to respond with one word.', '💡 PRO TIP: Offering a specific time (''Are you free Tuesday at 2pm or Thursday at 10am?'') gets 3x more responses than ''let me know when you''re free.''');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 5, 'The Invoice & Payment Request', 'Write professional invoice cover letters and payment reminder messages that get paid faster.', 'You are a business communications specialist. Write professional payment-related messages that are clear, firm, and preserve the client relationship.

MY BUSINESS NAME: [your name or business name]
CLIENT NAME: [who you''re billing]
INVOICE AMOUNT: [the total]
WORK COMPLETED: [brief description of what was delivered]
PAYMENT DUE DATE: [the deadline]
PAYMENT METHOD: [how they should pay — bank transfer, MoMo, etc.]
SITUATION: [first invoice / payment overdue by X days / final notice]

Write the following messages:
1. Invoice Cover Email (when sending the invoice for the first time) — professional, clear, with payment details
2. Friendly Reminder (3–5 days before due date) — warm, assumes they''ll pay
3. First Overdue Notice (5–7 days past due) — firm but professional, no accusation
4. Second Overdue Notice (14 days past due) — more direct, states consequences of non-payment
5. Final Notice (30 days past due) — very direct, final opportunity before escalation

All messages must remain professional regardless of how frustrated you are. Burning a client relationship over an invoice is almost never worth it.', '💡 PRO TIP: Always include the invoice number in every follow-up subject line (e.g., ''Invoice #0042 — Payment Due''). It makes it easy for their accounts team to find it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 6, 'The Business Plan Executive Summary', 'Write a compelling executive summary for a business plan that gets read and funded.', 'You are a business plan consultant and investor pitch advisor who has helped entrepreneurs secure funding across multiple industries.

Write an executive summary for the following business:

BUSINESS NAME: [name]
BUSINESS CONCEPT: [what the business does — describe it clearly in plain English]
THE PROBLEM IT SOLVES: [what pain point exists in the market]
THE SOLUTION: [how the business specifically addresses this problem]
TARGET MARKET: [who the customers are — be specific about size and demographics]
REVENUE MODEL: [how the business makes money]
CURRENT STAGE: [idea stage / prototype / launched / scaling]
KEY TRACTION (if any): [customers, revenue, partnerships, users — any evidence it''s working]
FUNDING NEEDED (if applicable): [how much are you raising and what for]
FOUNDER BACKGROUND: [brief relevant credentials]

Write an executive summary that:
1. Opens with a powerful statement about the market opportunity or problem
2. Clearly describes the business in 2 sentences (the "elevator pitch" version)
3. Outlines the market size and why now is the right time
4. Explains the solution and competitive advantage
5. Shows the business model and revenue potential
6. Highlights traction and key metrics
7. States the ask (if raising funds)
8. Closes with a compelling vision

Length: 400–500 words. Every sentence must earn its place.', '💡 PRO TIP: Write the executive summary LAST, after completing the full business plan. You will be able to summarise what you''ve already detailed.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 7, 'The Service Agreement / Contract Draft', 'Draft a professional service agreement that protects both you and your client.', 'You are a business documentation specialist. Draft a professional service agreement for the following engagement.

Note: This template is for general business use. Have a qualified legal professional review before using in high-value or legally complex situations.

SERVICE PROVIDER: [your name or business name]
CLIENT: [client name or business]
SERVICE DESCRIPTION: [exactly what services you will provide]
PROJECT TIMELINE: [start date, end date, or duration]
PAYMENT TERMS: [total amount, payment schedule, late payment policy]
REVISION POLICY: [how many revisions are included, what counts as a revision]
INTELLECTUAL PROPERTY: [who owns the work — you until paid, then transferred / client owns from day 1 / you retain rights and license to client]
CONFIDENTIALITY: [any NDA requirements]
TERMINATION: [how either party can end the agreement]
JURISDICTION: [country/city whose laws govern the agreement]

Write a complete service agreement with sections:
1. Parties & Definitions
2. Scope of Services
3. Timeline & Milestones
4. Payment Terms
5. Revision & Change Request Policy
6. Intellectual Property Rights
7. Confidentiality
8. Termination
9. Limitation of Liability
10. Governing Law
11. Signatures Block

Professional, clear language — readable by a non-lawyer.', '💡 PRO TIP: Never start work without a signed agreement. A simple PDF contract, even for small projects, dramatically reduces disputes.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 8, 'The Professional Bio Writer', 'Write a compelling professional biography for websites, press kits, and conference programmes.', 'You are a personal branding copywriter who specialises in writing professional biographies that are memorable, authoritative, and human.

Write professional bios based on:

FULL NAME: [your name]
PROFESSIONAL TITLE: [your current role or what you do]
INDUSTRY/FIELD: [your area of expertise]
YEARS OF EXPERIENCE: [how long you have been in this field]
KEY ACHIEVEMENTS: [3–5 specific accomplishments — numbers, milestones, recognition]
EDUCATION/CREDENTIALS: [relevant qualifications]
CURRENT WORK: [what you are doing now and why it matters]
PERSONAL ELEMENT: [one personal fact that humanises you — hobby, family, value you hold]
PURPOSE OF THE BIO: [website / speaker programme / press kit / LinkedIn / book jacket]

Write bios in THREE lengths:
1. SHORT BIO (75 words): For conference programmes, podcast guest intros, social profiles
2. MEDIUM BIO (150 words): For website "About" pages, press releases
3. LONG BIO (300 words): For speaker bios, book jackets, press kits

All three must:
- Be written in third person ("She is..." / "He is..." / "[Name] is...")
- Lead with the most impressive or relevant credential
- Feel human — not a list of job titles
- End with current focus or mission', '💡 PRO TIP: Update your bio every 6 months. An outdated bio with old titles and achievements quietly undermines your credibility.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 9, 'The Complaint Response Email', 'Write a professional, empathetic response to a client or customer complaint.', 'You are a customer experience specialist and business communicator. Write a complaint response that acknowledges the issue, rebuilds trust, and turns a negative experience into a loyalty-building moment.

THE COMPLAINT: [describe what the customer/client is unhappy about — as specifically as possible]
THE FACTS OF THE SITUATION: [what actually happened from your perspective]
MY RESPONSIBILITY IN THE ISSUE: [were you fully at fault / partially / was it a misunderstanding]
WHAT I CAN OFFER AS A RESOLUTION: [refund / redo / discount / apology / explanation / escalation]
MY BUSINESS TYPE: [what kind of business this is]
TONE: [formal / professional-warm / empathetic and direct]

Write the response email with:
1. Subject Line (acknowledges the complaint without being defensive)
2. Opening: Genuine acknowledgement and empathy — no justifications yet
3. Understanding: Show you have read and understood their specific complaint
4. Accountability: Take appropriate responsibility (do not over-apologise or under-apologise)
5. Explanation (if relevant): What happened — brief, factual, no blame-shifting
6. Resolution: Exactly what you will do to make it right
7. Prevention: What you are doing to ensure this does not happen again
8. Closing: Warm, confident, forward-looking

Do NOT use the phrase "I apologise for any inconvenience." It is empty. Be specific.', '💡 PRO TIP: A well-handled complaint can create a more loyal customer than one who never had a problem. The recovery matters more than the incident.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 10, 'The LinkedIn Connection Request', 'Write a personalised LinkedIn connection request that actually gets accepted.', 'You are a professional networking specialist. Write a LinkedIn connection request that is personal, clear about why you''re connecting, and impossible to ignore.

WHO I''M CONNECTING WITH: [name, title, company — and how I found them]
MY NAME & WHAT I DO: [your name and your professional background in one sentence]
WHY I WANT TO CONNECT: [genuine reason — shared industry, their content, mutual connection, potential collaboration, I admire their work]
WHAT I HOPE TO GAIN OR OFFER: [be honest and specific — learning from them / exploring potential synergies / sharing knowledge / building a relationship in this field]

Rules:
- LinkedIn connection requests have a 300-character limit for the note. Write within this limit.
- Do NOT pitch your services in a connection request. That is the fastest way to get ignored.
- Reference something SPECIFIC about them (a post they wrote, a company they work for, a mutual contact) to show this is not a mass message.

Write:
1. The connection request note (under 300 characters — punchy, personal, clear)
2. A follow-up message to send 48 hours after they accept (start a conversation, not a pitch)
3. A second follow-up message for 2 weeks later (share something of value)

Long-term goal: Build a genuine relationship first. Business follows relationship.', '💡 PRO TIP: Connection requests with personalised notes get accepted at 5x the rate of blank requests. Never connect without a note.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 11, 'The Internal Team Announcement', 'Write a clear, motivating internal communication for your team or staff.', 'You are an internal communications specialist. Write a clear, well-received internal team announcement.

TYPE OF ANNOUNCEMENT: [e.g., new policy / team restructure / new hire / project update / company achievement / change in process / performance feedback / meeting agenda]
AUDIENCE: [who is receiving this — whole company / specific team / managers only]
KEY MESSAGE: [the main thing they need to know]
ACTION REQUIRED (if any): [what do you need them to do]
TONE: [formal corporate / professional friendly / urgent / celebratory]
SENDER: [your name and title]

Write:
1. Email subject line (clear, specific)
2. The announcement (structured with short paragraphs — never more than 3 sentences per paragraph)
3. A bullet-point summary of key points (for those who skim)
4. Clear next steps or action items with deadlines and owners
5. An open door closing (invite questions)
6. A shorter Slack/WhatsApp version (under 100 words) of the same message

Principle: Internal communications that are unclear or too long get ignored. Respect people''s time.', '💡 PRO TIP: For sensitive announcements (restructures, policy changes), always give the ''why'' before the ''what.'' Context prevents resentment.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 12, 'The Press Release Writer', 'Write a professional press release for a business announcement, launch, or milestone.', 'You are a PR specialist and journalist who has written press releases that have been picked up by major media outlets. You know that journalists receive hundreds of releases per day — yours must be newsworthy and immediately clear.

Write a press release for the following:

ANNOUNCEMENT TYPE: [product launch / company milestone / new partnership / award / event / funding round / new hire]
COMPANY/BRAND NAME: [your company name]
HEADLINE OF THE NEWS: [the main announcement in one sentence]
THE STORY: [describe the full announcement in detail — what, who, when, where, why, how]
QUOTES: [provide 1–2 real quotes from a founder, executive, or partner — or I will write placeholder quotes for you to fill in]
CONTACT INFORMATION: [name, email, phone for media enquiries]
EMBARGO DATE (if applicable): [date and time the story can be published]
COMPANY BOILERPLATE: [one paragraph describing your company — what it does, when founded, mission]

Write a complete press release with:
- Headline (compelling, newsworthy, max 80 characters)
- Subheadline (expands on the headline, adds context)
- Dateline (City, Date —)
- Lead Paragraph (the full story in 40 words — who, what, when, where, why)
- Body (3–4 paragraphs expanding the story with quotes woven in)
- Boilerplate ("About [Company]")
- Contact Info
- ###  (standard press release close)', '💡 PRO TIP: Write the headline and first paragraph as if the journalist will only read those. The best press releases are fully understood in 10 seconds.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 13, 'The Cold Outreach Email', 'Write a cold email that gets opened, read, and replied to — without feeling spammy.', 'You are a sales development specialist who writes cold emails with a 25–40% open rate and a 10–15% reply rate — far above industry average. Your secret: hyper-personalisation, extreme brevity, and a compelling reason to reply.

Write a cold outreach email for:

MY BUSINESS/SERVICE: [what you offer]
TARGET PROSPECT: [who you''re emailing — their role, company, industry]
WHAT I KNOW ABOUT THEM: [something specific — a recent post they made, a company news item, a mutual connection, a challenge their industry faces]
MY GOAL FOR THIS EMAIL: [start a conversation / book a call / get a reply / offer a free resource]
HOW MY OFFER HELPS THEM SPECIFICALLY: [the direct value proposition for this specific person]

Write:
1. Subject Line (under 40 characters — personal, not salesy, curiosity-driven)
2. The email (under 120 words total):
   - Line 1: A specific, personalised opener that shows you''ve done your research (1 sentence)
   - Line 2–3: Bridge — connect what you noticed to a relevant insight or question
   - Line 4–5: Your offer or reason for reaching out — in terms of their benefit, not your product
   - CTA: One low-commitment ask (e.g., "Worth a 15-minute call?" / "Would this be useful for your team?")
3. A follow-up email for 5 days later (different angle, under 80 words)
4. A final "breakup" email for Day 14 (polite close, leaves the door open)

Rules: Never start with "I." Never mention your company until line 3. Make it about THEM.', '💡 PRO TIP: The best cold emails look like they were written specifically for that one person. If you can''t personalise, don''t send.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 14, 'The Negotiation Email', 'Write a professional negotiation email for pricing, contracts, salary, or terms.', 'You are a negotiation strategist and business communicator. Write a negotiation email that is assertive, respectful, and positions you to achieve your desired outcome without damaging the relationship.

WHAT I AM NEGOTIATING: [e.g., my freelance rate / a contract term / a supplier price / my salary / project scope / payment schedule]
MY CURRENT POSITION: [what I have been offered or what is currently on the table]
MY DESIRED OUTCOME: [what I want to achieve from this negotiation]
MY BEST ALTERNATIVE: [what I will do if we can''t reach a deal — knowing this gives you power]
MY LEVERAGE: [why they need me / my unique value / market rate data / alternatives they have / relationship history]
TONE REQUIRED: [collaborative / firm / empathetic / formal]

Write an email that:
1. Opens by affirming the relationship or common ground — not with the disagreement
2. Clearly states your position with a confident (not apologetic) framing
3. Provides 1–2 specific reasons that justify your position (data, market rate, scope of work, value delivered)
4. Proposes a specific counter-offer or alternative arrangement
5. Gives them an easy way to agree or counter-propose without losing face
6. Closes warmly — the goal is a deal, not a win

Also write: A post-negotiation confirmation email once terms are agreed.', '💡 PRO TIP: Never negotiate against yourself. State your position once, clearly, and wait for their response. Silence is a powerful negotiation tool.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 15, 'The Declination / ''No'' Email', 'Write a professional email declining a request, offer, or application while preserving the relationship.', 'You are a professional communications expert. Write a declination email that says ''no'' clearly but kindly — preserving the relationship and the sender''s dignity.

WHAT I AM DECLINING: [e.g., a job candidate / a business proposal / a collaboration request / an invitation / a client''s request / a discount request]
REASON FOR DECLINING: [the real reason — you don''t have to share all of it, but it informs the tone]
HOW MUCH DETAIL TO GIVE: [brief explanation / no explanation / redirect to alternative]
RELATIONSHIP WITH RECIPIENT: [first contact / existing relationship / long-term client or partner]
TONE: [formal / professional-warm / empathetic]

Write a declination email that:
1. Acknowledges what they submitted, applied for, or proposed specifically
2. Expresses genuine appreciation for their time, effort, or interest
3. Delivers the decision clearly — no ambiguity, no false hope ("we''ll keep you in mind" when you won''t)
4. Gives a brief, honest reason if appropriate — without over-explaining or apologising excessively
5. Offers a constructive alternative where possible (a referral, a future opportunity, a different path)
6. Closes warmly — leave the door open if appropriate

Rules: Do NOT leave people hanging with vague language. Respect them enough to be clear.', '💡 PRO TIP: How you say no is how you''ll be remembered. A well-crafted declination email often generates more goodwill than a messy yes.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 16, 'The Brand Partnership Proposal', 'Pitch a brand partnership or sponsorship with a professional, compelling proposal document.', 'You are a brand partnership strategist. Write a professional partnership or sponsorship proposal for:

MY BRAND/PLATFORM: [your name, brand, or media property]
MY AUDIENCE: [size, demographics, psychographics, engagement rate]
POTENTIAL PARTNER BRAND: [who you''re pitching and what they sell]
PARTNERSHIP TYPE: [content sponsorship / product collab / event partnership / affiliate deal / ambassador programme]
WHAT I OFFER THEM: [reach, content, audience alignment, creative execution]
WHAT I WANT IN RETURN: [payment / free products / commission / exposure / resource access]
DURATION: [one-off / 3-month / ongoing]
METRICS I CAN DELIVER: [views, followers, engagement, conversions, traffic]

Write a proposal document with:
1. Executive Summary (why this partnership makes sense — in 100 words)
2. About Me/My Platform (who you are, what you''ve built, your audience profile with data)
3. The Opportunity (why their brand fits your audience and vice versa)
4. Partnership Options (present 2–3 tiers so they can choose — Silver / Gold / Platinum or similar)
5. Deliverables & Timeline for each tier
6. Investment (what each tier costs)
7. Past Partnerships or Results (if any — or a placeholder section)
8. Next Steps (clear CTA — when to respond, how to proceed)
9. Contact & Signature Block', '💡 PRO TIP: Always present 3 tiers. People rarely choose the cheapest option when presented with a premium alternative — the middle tier gets picked most often.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 17, 'The Performance Review Self-Assessment', 'Write a strong self-assessment for your annual or mid-year performance review.', 'You are a career development coach who helps professionals write self-assessments that clearly communicate their value, advocate for themselves professionally, and position them for growth and promotion.

Write my performance review self-assessment based on:

MY ROLE: [your job title and main responsibilities]
REVIEW PERIOD: [the time period being assessed]
MY KEY ACHIEVEMENTS: [list 4–6 specific accomplishments — with numbers and outcomes where possible]
CHALLENGES I FACED: [what obstacles did you navigate this period]
SKILLS I DEVELOPED: [new capabilities, training, or growth areas]
AREAS FOR IMPROVEMENT: [where you know you can grow — be honest but strategic]
MY GOALS FOR NEXT PERIOD: [what you want to achieve in the next review period]
MY PROMOTION/RAISE ASPIRATIONS: [if applicable — what growth you''re hoping for]

Write the self-assessment with:
1. Summary of Role Performance (confident, achievement-focused overview)
2. Key Accomplishments (bullet points with context, action, and result for each)
3. Challenges Navigated (frame difficulties as demonstrations of resilience and problem-solving)
4. Skills & Growth (what you learned and how it adds value to the team)
5. Development Areas (honest self-reflection — choose one that is real but not career-limiting)
6. Goals for Next Period (ambitious but achievable — align with company objectives)
7. Career Growth (if asking for promotion or raise — frame in terms of value delivered, not tenure)', '💡 PRO TIP: Quantify everything. ''Increased sales'' means nothing. ''Increased sales by 23% in Q3 to GHS 180,000'' gets you a raise.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 18, 'The Networking Follow-Up Email', 'Write a post-networking follow-up that turns a brief meeting into a lasting professional relationship.', 'You are a relationship-building specialist. Write a follow-up email after a networking event, conference, or introduction that is warm, memorable, and moves the relationship forward.

HOW WE MET: [e.g., conference, networking event, LinkedIn connection, mutual introduction, online community]
THEIR NAME & WHAT THEY DO: [name and their professional background]
WHAT WE TALKED ABOUT: [key topics, shared interests, or what they mentioned that was memorable]
WHAT I PROMISED OR OFFERED: [any resource, introduction, or follow-up I mentioned during our conversation]
MY GOAL: [stay in touch / explore potential collaboration / get advice / book a meeting / share a resource]

Write:
1. Subject line (references something specific from your conversation)
2. The email (under 150 words):
   - Opening: Specific callback to something you discussed (not generic "great to meet you")
   - Middle: Deliver on any promise you made + one additional value-add (an article, resource, or introduction they''d appreciate)
   - Close: One clear, easy next step
3. A 2-week check-in message (keep the relationship warm without being pushy)
4. A 3-month "thinking of you" message (long-term relationship maintenance)', '💡 PRO TIP: Follow up within 24 hours while the conversation is fresh. After 72 hours, the connection cools significantly.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 19, 'The Apology Email', 'Write a professional apology email that repairs trust and is genuinely felt.', 'You are a crisis communications specialist and business relationship expert. Write an apology email that is genuine, accountable, and rebuilds the damaged trust without excessive grovelling.

WHAT HAPPENED: [describe the situation that requires an apology]
WHO I AM APOLOGISING TO: [client / colleague / customer / partner / team member]
MY LEVEL OF RESPONSIBILITY: [fully at fault / partially responsible / it was a misunderstanding]
THE IMPACT IT HAD ON THEM: [what consequences did they experience — financial, emotional, professional]
WHAT I HAVE DONE OR WILL DO TO FIX IT: [the concrete steps being taken]
RELATIONSHIP CONTEXT: [new relationship / long-standing client / important partner]

Write an apology email that:
1. Opens with a direct, specific apology — not buried in pleasantries
2. Acknowledges the specific harm caused (shows you understand the impact)
3. Takes clear, appropriate responsibility — no deflection, no "if you were offended"
4. Explains (not excuses) what happened if relevant — one sentence, no over-justification
5. States exactly what you are doing to fix it and prevent recurrence
6. Invites them to share how they''re feeling or what they need
7. Closes with a commitment to the relationship, not just the issue

Rules: Never start with "I want to apologise..." Just apologise. Do not use "but" after an apology — it cancels it.', '💡 PRO TIP: The fastest way to rebuild trust after a mistake is to over-deliver on the resolution. Exceed what you promised to fix it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 20, 'The Project Status Update', 'Write a clear, professional project status update for clients or stakeholders.', 'You are a project manager and business communicator. Write a clear, concise project status update that keeps stakeholders informed without overwhelming them with detail.

PROJECT NAME: [what the project is called]
RECIPIENT(S): [client / team / management / board]
UPDATE PERIOD: [what time period this covers — this week / this month / since last check-in]
OVERALL STATUS: [On Track / Slightly Behind / At Risk / Completed]
COMPLETED THIS PERIOD: [what was achieved since the last update]
IN PROGRESS NOW: [what is currently being worked on]
UPCOMING MILESTONES: [what is coming next and when]
BLOCKERS/RISKS: [any issues or risks that need attention — be transparent]
DECISIONS NEEDED: [any approvals or decisions required from the recipient]
BUDGET STATUS (if relevant): [on budget / X% under / X% over]

Write a status update email with:
1. Subject: "[Project Name] — Status Update [Date]"
2. Traffic light indicator (🟢 On Track / 🟡 At Risk / 🔴 Behind)
3. One-paragraph executive summary (for those who won''t read further)
4. Completed This Period (bullet points)
5. In Progress (bullet points with % completion if possible)
6. Upcoming (next 2 weeks / next milestone)
7. Risks & Blockers (with proposed solutions, not just problems)
8. Decisions Needed (clearly flagged with deadline)

Length: Under 300 words. Stakeholders should be able to assess project health in 60 seconds.', '💡 PRO TIP: Never hide bad news in a status update. Bad news delivered early is a problem. Bad news delivered late is a crisis.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 21, 'The Customer Testimonial Request Email', 'Write an email campaign to collect powerful testimonials from satisfied clients.', 'You are a customer marketing specialist. Write a testimonial collection email sequence for:

MY BUSINESS: [what you do]
THE CLIENT BEING ASKED: [who they are and what they purchased or experienced]
WHAT OUTCOME THEY ACHIEVED: [the result they got from working with you]
WHERE I WANT TO USE THE TESTIMONIAL: [website / social media / proposal / all of the above]
FORMAT I WANT: [written quote / video testimonial / Google review / case study]

Write:
1. The primary request email (150 words) — warm, specific, makes it easy to say yes
2. 3 guiding questions to include (to shape the testimonial you receive)
3. A reminder email for 5 days later (shorter, friendly)
4. A thank-you email to send after they provide the testimonial
5. A case study request upgrade email — for your best clients, asking for a full case study instead of a short quote', '💡 PRO TIP: Make it as easy as possible. Send the guiding questions in the email body so they can literally reply with their answers. Remove all friction.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 22, 'The Business Report Executive Summary', 'Write an executive summary for any business report that decision-makers will actually read.', 'You are a senior business analyst and report writer. Write an executive summary for a business report.

REPORT TITLE: [name of the report]
REPORT PURPOSE: [why this report was commissioned and what it covers]
KEY FINDINGS: [list your 4–6 most important findings or data points]
RECOMMENDATIONS: [list your top 3–5 recommended actions]
AUDIENCE: [who will read this — board / investors / management / clients]
REPORT LENGTH: [how long the full report is]

Write an executive summary that:
1. Opens with the "so what" — the most critical insight or finding, not background context
2. Briefly states the scope and methodology (1–2 sentences)
3. Presents Key Findings in numbered, scannable format (each finding with a one-line implication)
4. Presents Recommendations clearly — action-oriented, specific, with proposed owner or timeline
5. Closes with the path forward — what decision this report is designed to inform

Length: 300–400 words. If a reader only reads the executive summary, they should be fully briefed.', '💡 PRO TIP: Write the executive summary for someone who has 90 seconds and no patience. Lead with conclusions, not with how you arrived at them.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 23, 'The Strategic Partnership Inquiry', 'Write a compelling initial outreach email to explore a potential business partnership.', 'You are a business development specialist. Write a strategic partnership inquiry email that opens a door, not a sales conversation.

MY BUSINESS: [what you do — briefly]
POTENTIAL PARTNER BUSINESS: [who they are, what they do]
THE PARTNERSHIP IDEA: [what kind of partnership you''re envisioning — referral arrangement / joint offer / co-marketing / product integration / distribution deal]
WHY THIS MAKES SENSE FOR BOTH: [the mutual benefit — be specific]
HOW I FOUND THEM: [referral / online research / attended their event / fan of their work]
MY ASK: [a conversation / a call / a meeting / feedback on an idea]

Write:
1. Subject line (not "Partnership Opportunity" — be specific and human)
2. The email (under 150 words):
   - Who you are (1 sentence — be impressive but brief)
   - Why you''re reaching out to THEM specifically (research-backed, not generic)
   - The partnership idea, framed as a question or concept (not a full pitch)
   - The ask (a 20-minute call, not a deep-dive meeting)
3. A follow-up email for 7 days later
4. A meeting agenda template for once they agree to talk', '💡 PRO TIP: The best partnership emails are the ones that make the recipient think ''this person gets what we do.'' Show you''ve done your homework.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 24, 'The Job Rejection Response', 'Write a gracious, professional response to a job rejection that keeps the door open.', 'You are a career coach and professional communications expert. Write a job rejection response email that is gracious, memorable, and strategically keeps you on the employer''s radar for future opportunities.

COMPANY NAME: [the company that rejected you]
ROLE YOU APPLIED FOR: [the position]
HOW FAR YOU GOT: [e.g., application stage / first interview / final round]
YOUR INTERACTION WITH THE HIRING TEAM: [did you meet anyone / speak to a recruiter / have a great conversation in the interview]
YOUR LONG-TERM INTEREST IN THE COMPANY: [are you still genuinely interested in working there]

Write a response email that:
1. Thanks them sincerely for their time and the opportunity to interview
2. Expresses genuine disappointment without desperation
3. Reaffirms your interest in the company (not just any job — this specific company)
4. Asks (politely) for any feedback they''re able to share
5. States your hope to be considered for future opportunities
6. Closes professionally

Length: Under 150 words. Dignity over desperation, always.', '💡 PRO TIP: Hiring managers remember the candidates who responded to rejection with grace. Three months later, when a new role opens, you''ll be the first person they think of.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 25, 'The End-of-Year Business Wrap-Up Letter', 'Write a year-end letter to clients, partners, or stakeholders that strengthens the relationship.', 'You are a business relationship strategist. Write a year-end wrap-up letter or email for:

MY BUSINESS NAME: [your business name]
RECIPIENT TYPE: [clients / partners / suppliers / investors / subscribers]
HIGHLIGHTS OF THE YEAR: [3–5 key achievements, milestones, or moments]
CHALLENGES WE NAVIGATED TOGETHER: [honest reflection on difficulties — optional]
GRATITUDE I WANT TO EXPRESS: [what specifically are you grateful for from these relationships]
WHAT''S COMING IN THE NEW YEAR: [preview of upcoming launches, changes, or improvements]
ANY OFFER OR GIFT: [special discount / free resource / exclusive preview / nothing — just goodwill]

Write a letter/email that:
1. Opens with a warm, specific expression of gratitude (not "Happy Holidays")
2. Briefly reflects on the year''s highlights (make the recipient feel part of the journey)
3. Acknowledges the relationship and what it has meant
4. Shares what''s coming (creates excitement and retention)
5. Offers any gift or bonus (if applicable)
6. Closes with a genuine personal message from the founder/team

Tone: Warm, human, personal — like a letter from a real person, not a marketing department.', '💡 PRO TIP: Send this before December 20th. Emails sent between December 20–January 2 get opened 40% less. Timing is everything.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 26, 'The Supplier / Vendor Negotiation Email', 'Write a negotiation email to get better terms, pricing, or conditions from a supplier.', 'You are a procurement specialist and negotiation expert. Write a supplier negotiation email for:

SUPPLIER NAME: [who you''re negotiating with]
WHAT I BUY FROM THEM: [product or service]
CURRENT TERMS: [current price, payment terms, delivery timeline]
WHAT I WANT TO ACHIEVE: [lower price / better payment terms / faster delivery / larger volume discount / exclusive deal]
MY LEVERAGE: [volume I purchase / long-term relationship / competitive alternatives / market pricing data]
MY RELATIONSHIP WITH THEM: [new supplier / existing supplier of X years / strategic partner]

Write:
1. The negotiation email (professional, firm, relationship-preserving):
   - Appreciation for the existing relationship
   - Clear statement of what you''re requesting and why
   - Your rationale or evidence (market rates, volume, loyalty)
   - A specific counter-proposal
   - A collaborative close — you want a win-win

2. A response email for if they say no — holding your position calmly
3. An agreement confirmation email for when terms are finalised', '💡 PRO TIP: Always negotiate in writing, not just verbally. Written agreements prevent misunderstandings and protect both parties.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 27, 'The Brand Story', 'Write a compelling brand story for your website ''About'' page or pitch materials.', 'You are a brand narrative strategist who crafts origin stories that make customers choose you over competitors — not because of price or features, but because of connection.

Write my brand story based on:

FOUNDER NAME(S): [who started this business]
WHEN & WHERE IT WAS FOUNDED: [date and location]
THE ORIGIN: [why did you start this — what personal experience, frustration, or insight led to this business]
THE PROBLEM YOU NOTICED IN THE WORLD: [what was broken that you decided to fix]
THE EARLY JOURNEY: [what were the first steps, challenges, early customers or pivots]
THE MISSION: [what you''re fundamentally trying to achieve]
WHO YOU SERVE: [your customers — who they are and what you do for their lives]
WHERE YOU ARE NOW: [current size, achievements, impact]
THE FUTURE: [where you''re headed]

Write a brand story that:
1. Opens with the moment of realisation or the "before" — the world before this business existed
2. Introduces the founder as a real human being with a real reason
3. Makes the reader feel the problem before presenting the solution
4. Shows the journey — not just the destination
5. Connects the story to the customer''s own story (they are the hero; you are the guide)
6. Ends with a forward-looking statement of mission and invitation

Length: 400–600 words. Read as both a web page and a pitch deck slide narrative.', '💡 PRO TIP: Your brand story is not about you. It is about your customer. They should read it and think ''this brand was built for me.''');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 28, 'The Board / Investor Update', 'Write a concise, credible investor or board update that builds confidence.', 'You are a startup communications advisor who has helped founders write board updates that maintain investor confidence and build long-term trust through both good and difficult periods.

Write an investor/board update for:

COMPANY NAME: [your company name]
UPDATE PERIOD: [monthly / quarterly — and the specific period]
KEY METRICS THIS PERIOD: [revenue / users / growth rate / burn rate / runway — with actual numbers]
HIGHLIGHTS: [biggest wins, milestones, and positive developments]
LOWLIGHTS: [honest reporting of challenges, misses, or setbacks]
KEY FOCUS AREAS NEXT PERIOD: [top 3 priorities]
ASKS: [what do you need from investors — introductions, advice, resources, decisions]

Write an update that follows the best-practice format:
1. TL;DR Summary (3 bullet points — one highlight, one lowlight, one ask)
2. Metrics Dashboard (key numbers with month-over-month or quarter-over-quarter comparison)
3. Highlights (what went well and why it matters)
4. Lowlights (honest, solution-focused — what went wrong and what you''re doing about it)
5. Key Focus Areas (top priorities for next period)
6. Asks (specific, easy-to-act-on requests)

Tone: Confident and transparent. Investors want honesty more than spin.', '💡 PRO TIP: The founders who communicate bad news proactively and with a plan get MORE investor trust, not less. Never hide lowlights.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 29, 'The Team Meeting Agenda', 'Write a structured, efficient team meeting agenda that respects everyone''s time.', 'You are a meeting facilitation expert who designs agendas that make meetings productive, inclusive, and decision-focused. Most meetings fail because they have no clear agenda. Yours will not.

Write a team meeting agenda for:

MEETING TYPE: [weekly team standup / project kickoff / strategy session / retrospective / client review / all-hands]
MEETING DURATION: [30 min / 45 min / 60 min / 90 min / 2 hours]
ATTENDEES: [list roles or names]
MEETING OBJECTIVES: [what must be decided, discussed, or communicated by the end of this meeting]
KEY TOPICS TO COVER: [list the 3–6 topics]
FACILITATOR: [who is running the meeting]
PRE-READS OR PREPARATION: [any documents or thinking attendees should bring]

Write:
1. Meeting title and objective (one sentence — why this meeting exists)
2. Pre-meeting prep (what to review or prepare before attending)
3. Timed agenda:
   - Item → Owner → Time allocated → Expected output (decision / update / discussion)
4. Parking Lot section (for topics that come up but aren''t on agenda — saves meetings from going off-track)
5. Action Items template (for the end of the meeting — item / owner / deadline)
6. A pre-meeting invite message to send to attendees

Rule: Every item must have an owner and a clear expected outcome.', '💡 PRO TIP: Send the agenda 24 hours in advance. Meetings without pre-shared agendas waste the first 10 minutes on context-setting.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (2, 'BUSINESS WRITING', 30, 'The Client Case Study', 'Write a compelling case study that proves your results and converts new prospects.', 'You are a content marketer and case study writer who knows that a well-written case study is the most powerful sales tool a service business can have — more persuasive than any testimonial or feature list.

Write a client case study for:

CLIENT DESCRIPTION: [who the client is — industry, size, situation (anonymise if needed)]
THE CHALLENGE: [what problem or goal they came to you with]
THE SOLUTION YOU PROVIDED: [what you did, step by step]
THE RESULTS: [specific, quantified outcomes — revenue increase, time saved, cost reduced, etc.]
TIMELINE: [how long the project took]
QUOTE FROM CLIENT (if available): [a real quote or placeholder]
WHERE THIS WILL BE PUBLISHED: [website / proposal / social media / pitch deck]

Write the case study with:
1. Headline (result-focused — e.g., "How [Client] Increased Revenue by 40% in 90 Days")
2. Client Snapshot (industry, size, context — 2 sentences)
3. The Challenge (paint the problem vividly — the stakes, the frustration, what was at risk)
4. The Approach (what you did and why — make this feel strategic, not just a list of tasks)
5. The Results (lead with the numbers — then explain the human impact)
6. Client Quote (placed after results for maximum impact)
7. Key Takeaway (one insight any reader in a similar situation can apply)
8. CTA (how to get similar results — contact you, book a call, etc.)', '💡 PRO TIP: Always ask for data. A case study with numbers (''37% increase in conversions'') is 10x more powerful than one without (''significant improvement'').');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 1, 'The Essay Architect', 'Build a complete, well-structured essay outline on any topic for any academic level.', 'You are an expert academic writing tutor who has helped thousands of students write compelling, well-argued essays across all disciplines.

Build a complete essay outline for the following:

ESSAY TOPIC/QUESTION: [the exact essay question or topic you''ve been given]
ESSAY TYPE: [argumentative / analytical / compare and contrast / reflective / descriptive / research essay]
WORD COUNT REQUIRED: [e.g., 1,000 / 1,500 / 2,500 / 5,000 words]
ACADEMIC LEVEL: [secondary school / undergraduate / postgraduate]
SUBJECT/COURSE: [e.g., Economics / Literature / Business / Law / History / Biology]
REFERENCING STYLE: [APA / MLA / Harvard / Chicago / IEEE / not required]
KEY SOURCES OR READINGS (if any): [list any specific texts, authors, or articles you''ve been told to reference]

Deliver a complete outline with:
1. Thesis Statement (one sentence that states your argument clearly and specifically)
2. Introduction Outline (hook strategy + background context + thesis placement)
3. Body Paragraphs — for each paragraph:
   - Topic Sentence (the argument of this paragraph)
   - Evidence Points (2–3 pieces of evidence or examples to use)
   - Analysis Direction (what you''ll argue/explain about the evidence)
   - Transition to Next Paragraph
4. Counterargument Paragraph (acknowledge and refute the opposing view)
5. Conclusion Outline (synthesis of arguments + broader significance + final statement)
6. Suggested Sources to Find (3–5 recommended academic sources, authors, or databases to search)
7. Time Plan (how to allocate writing time given your word count)', '💡 PRO TIP: Submit your outline to your tutor before writing the full essay. Catching structural problems early saves you hours of rewriting.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 2, 'The Research Summariser', 'Turn complex academic papers, articles, or textbook chapters into clear, usable summaries.', 'You are an expert academic research assistant who specialises in making complex academic material understandable without losing its rigour or accuracy.

Summarise and analyse the following material:

CONTENT TO SUMMARISE: [paste the text, abstract, or key sections of the paper/article/chapter here — or describe the paper by title and author if you cannot paste the text]
MY COURSE/SUBJECT: [what subject this relates to]
MY ACADEMIC LEVEL: [secondary / undergraduate / postgraduate]
PURPOSE: [to understand it for an exam / to use as a source in an essay / to prepare for a seminar / general understanding]
SPECIFIC FOCUS: [any particular aspect or section you need most help with]

Deliver:
1. The Big Picture (2 sentences — what is this about and why does it matter)
2. Author''s Main Argument or Thesis (clearly stated)
3. Key Points Summary (5–8 bullet points — the most important ideas, in simple English)
4. Key Concepts Explained (define the 3–5 most important terms or theories in plain language)
5. Evidence & Examples Used (what does the author use to support their claims)
6. Limitations or Criticisms (what are the weaknesses or gaps in this work)
7. Relevance to My Work (how can I use this in my essay or exam — 3 specific ways)
8. One Quote to Use (the most citable, powerful sentence from this work with page reference if available)', '💡 PRO TIP: Never cite a source you haven''t read. Use this prompt to understand what you''re referencing, not to skip reading entirely.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 3, 'The Exam Question Predictor', 'Generate likely exam questions based on your syllabus and use them to prepare thoroughly.', 'You are a senior examiner and academic tutor with 20 years of experience setting and marking exams across multiple disciplines. You understand what examiners look for and how to predict what will appear on assessments.

Help me prepare for my upcoming exam:

SUBJECT/COURSE: [e.g., Economics / Literature / History / Biology / Business Studies / Law]
TOPICS COVERED IN THIS COURSE: [list the main topics or units in your syllabus]
EXAM TYPE: [multiple choice / essay questions / short answer / case study analysis / problem-solving / mixed]
EXAM DURATION: [1 hour / 2 hours / 3 hours]
ACADEMIC LEVEL: [secondary school / undergraduate / postgraduate]
AREAS I FIND MOST DIFFICULT: [be honest — list 2–3 topics you struggle with]
PAST EXAM PATTERNS (if known): [any themes or question types that come up repeatedly]

Deliver:
1. 10 Predicted High-Probability Exam Questions (across different topics — range from straightforward to complex)
2. For each question:
   - The question itself
   - Why this is likely to appear (based on syllabus emphasis or common exam patterns)
   - A 5-point answer outline (key points any good answer must include)
   - The common mistake students make when answering this question
3. 5 "Curveball" Questions (less obvious questions that distinguish A students from B students)
4. A 2-week revision schedule based on these predicted questions', '💡 PRO TIP: Practice answering these questions under timed conditions. Knowing the content is different from performing under exam pressure.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 4, 'The Citation Generator & Explainer', 'Generate correct citations in any referencing style and understand how to use them properly.', 'You are an academic librarian and referencing specialist with expertise in all major citation styles. You help students cite sources correctly and avoid accidental plagiarism.

Help me with the following citation:

SOURCE TYPE: [journal article / book / book chapter / website / newspaper article / government report / lecture notes / YouTube video / podcast / interview]
SOURCE DETAILS:
- Author(s): [full names]
- Title: [title of the work]
- Publication/Journal/Website Name: [where it was published]
- Year of Publication: [year]
- For articles: Volume, Issue, Page numbers
- For websites: URL and date accessed
- For books: Publisher, edition, place of publication
- DOI (if available): [digital object identifier]

REFERENCING STYLE REQUIRED: [APA 7th / MLA 9th / Harvard / Chicago 17th / Vancouver / IEEE]
HOW I AM USING THIS SOURCE: [direct quote / paraphrase / summary of the whole work / referring to a specific idea]

Deliver:
1. The In-Text Citation (exactly how to cite this within your essay)
2. The Reference List Entry (exactly how it appears at the end of your essay)
3. An Example Sentence showing how to introduce this source in academic writing
4. How to cite a direct quote from this source (with quotation marks + page number)
5. How to paraphrase this source correctly (so it does not count as plagiarism)
6. Common mistake to avoid with this specific type of source', '💡 PRO TIP: When in doubt, cite it. Over-citing is far less dangerous than plagiarism, which can end your academic career.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 5, 'The Study Schedule Builder', 'Create a realistic, personalised study plan for any exam or assignment deadline.', 'You are an academic performance coach who designs study schedules that are realistic, evidence-based (using spaced repetition and active recall techniques), and achievable for students with competing responsibilities.

Build a study schedule for me:

WHAT I AM STUDYING FOR: [exam name / assignment / project / multiple exams in the same period]
DEADLINE/EXAM DATE: [when is it]
START DATE: [when do I begin studying]
HOURS AVAILABLE PER DAY: [be realistic — how many hours can I genuinely commit, considering other responsibilities]
SUBJECTS/TOPICS TO COVER: [list everything that needs to be studied]
MY WEAKEST TOPICS: [what needs the most time]
MY STRONGEST TOPICS: [what needs the least time]
OTHER COMMITMENTS: [classes, part-time work, family responsibilities, fixed events in your week]

Deliver:
1. Day-by-day schedule from start date to exam/deadline (in table format: Day / Date / Topics / Study Technique / Hours)
2. Recommended study techniques for each topic type (e.g., flashcards for definitions, practice problems for maths, essay plans for humanities)
3. Review sessions built into the schedule (spaced repetition — revisit material at increasing intervals)
4. Buffer days (at least 2 days before the exam for final review only — no new material)
5. Daily structure suggestion (e.g., 50-minute focused sessions with 10-minute breaks — the Pomodoro method)
6. What to do the night before and morning of the exam', '💡 PRO TIP: A study schedule only works if it''s realistic. If you give yourself 8 hours a day but only have 4, you''ll fall behind on day 2 and give up. Be honest.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 6, 'The Academic Argument Builder', 'Develop a clear, well-evidenced academic argument on any thesis statement.', 'You are a senior academic tutor and debate coach who helps students construct arguments that are logically sound, well-evidenced, and persuasive to academic markers.

Help me build an argument for the following:

MY THESIS STATEMENT: [the main position or argument you are defending]
SUBJECT/DISCIPLINE: [e.g., Political Science / Economics / Literature / Law / Sociology]
ESSAY WORD COUNT: [total word count]
MY ACADEMIC LEVEL: [undergraduate / postgraduate]
COUNTERARGUMENTS I NEED TO ADDRESS: [what are the strongest opposing views I should acknowledge]
KEY EVIDENCE I HAVE (if any): [any sources, studies, examples, or data points you already know you''ll use]

Build my argument structure:
1. Refined Thesis Statement (make it more specific, arguable, and academically precise)
2. Three Main Arguments (each one a distinct pillar supporting the thesis):
   - The Argument (stated clearly)
   - Evidence to Use (types of sources, studies, examples)
   - The Logical Link (how this evidence proves the argument)
   - Potential Weakness + How to Address It
3. The Best Counterargument against my thesis (state it fairly and fully)
4. My Rebuttal (how to concede partially while maintaining my position)
5. The Synthesis (how all three arguments together build an irrefutable case)
6. The Strongest Closing Statement (leaves the reader convinced)', '💡 PRO TIP: The strongest essays acknowledge the best counterargument directly. Pretending opposition doesn''t exist weakens your credibility. Engage it and defeat it.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 7, 'The Group Project Coordinator', 'Plan and structure a group assignment so everyone contributes and the project succeeds.', 'You are an academic project management coach who specialises in helping student groups collaborate effectively, divide work fairly, and produce high-quality joint submissions.

Help me plan a group project:

PROJECT/ASSIGNMENT BRIEF: [describe the assignment — what is required, what format, what topic]
WORD COUNT OR OUTPUT: [length or deliverable — e.g., 3,000 word report / 20-slide presentation / prototype + report]
SUBMISSION DEADLINE: [when is it due]
NUMBER OF GROUP MEMBERS: [how many people are in the group]
SKILLS IN THE GROUP (if known): [any notable strengths — strong writer, good at data, presentation skills, etc.]
GRADING STRUCTURE: [individual marks / group mark / combination]

Deliver:
1. Project Breakdown: Divide the assignment into specific, equal-ish tasks
2. Role Assignment Suggestions (who should do what — based on skills or fair rotation)
3. Timeline: Key milestones with recommended internal deadlines (final draft due 3 days before submission — always)
4. Meeting Schedule: When the group should meet and what to cover in each meeting
5. Communication Protocol: Recommended tools (WhatsApp, Google Docs, shared drive) and expectations
6. Conflict Resolution Guide: What to do if a member is not contributing
7. Quality Control Plan: How to combine sections into a coherent whole (not a patchwork document)
8. Final Review Checklist: What to verify before submission', '💡 PRO TIP: Set your group''s internal deadline 3 days before the real deadline. This buffer is your insurance against late contributions and last-minute emergencies.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 8, 'The Presentation Script Builder', 'Write a complete presentation script with notes for any academic or professional presentation.', 'You are an academic public speaking coach and presentation designer who helps students deliver presentations that are confident, well-structured, and genuinely engaging.

Write a presentation script for:

PRESENTATION TOPIC: [what the presentation is about]
COURSE/SUBJECT: [what class or context this is for]
PRESENTATION DURATION: [5 min / 10 min / 15 min / 20 min / 30 min]
FORMAT: [solo / group — if group, how many speakers]
AUDIENCE: [classmates / tutors / external examiners / mixed audience]
NUMBER OF SLIDES: [how many slides you plan to use]
KEY POINTS TO COVER: [list your 3–5 main points]
GOAL: [pass the module / impress external judges / get feedback / demonstrate research]

Deliver:
1. Opening Script (30–60 seconds): Hook that grabs attention — a question, statistic, or story. Introduce yourself and state the presentation objective.
2. Slide-by-Slide Script: For each slide:
   - What to say out loud (the spoken script — natural, not robotic)
   - What the slide should display (bullet points or visual suggestion)
   - Speaker notes (transitions, reminders, where to pause)
3. Handling Questions: 5 anticipated questions with model answer outlines
4. Closing Script (30 seconds): Summary + strong final statement + thank you
5. Presentation Timing Guide: Approximately how long to spend on each section
6. Confidence Tips: 3 practical techniques specific to this presentation context', '💡 PRO TIP: Practise your presentation out loud at least 3 times before the real thing. Reading your script in your head is completely different from saying it aloud.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 9, 'The Literature Review Planner', 'Structure and write a systematic literature review for a dissertation or research paper.', 'You are a postgraduate research supervisor who has guided dozens of students through literature reviews for dissertations and research papers. You know the difference between a literature review and a list of summaries.

Help me plan and write my literature review:

MY RESEARCH TOPIC: [your dissertation/paper topic]
MY RESEARCH QUESTION: [the specific question your research aims to answer]
ACADEMIC LEVEL: [undergraduate dissertation / postgraduate masters / PhD]
REQUIRED WORD COUNT: [how long the literature review should be]
SOURCES I HAVE FOUND (if any): [list any papers, authors, or key works you''ve already identified]
THEORETICAL FRAMEWORKS RELEVANT: [any theories or frameworks central to your field]
TIME PERIOD TO COVER: [e.g., literature from 2000 to present / foundational + recent]

Deliver:
1. Literature Review Structure (thematic or chronological — recommend which is better for my topic and why)
2. Key Themes to Cover (the 4–6 major conversations in the literature that relate to my research question)
3. For each theme:
   - What the dominant view is in the literature
   - Where scholars disagree or debate
   - The gap your research addresses
4. How to Write the Synthesis Paragraphs (not summary + summary + summary — but integrated critical discussion)
5. How to Write the Gap Statement (the most important sentence in any literature review)
6. Common Mistakes to Avoid in Literature Reviews
7. A suggested reading list structure (how many sources per theme, total recommended number)', '💡 PRO TIP: A literature review is not about showing everything you''ve read. It''s about showing how existing knowledge sets up your research question. Always write toward the gap.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 10, 'The Exam Day Strategy Guide', 'Get a personalised exam-day strategy that maximises your performance under pressure.', 'You are an academic performance psychologist and exam technique specialist. Create a personalised exam strategy for me.

SUBJECT/EXAM: [what exam is it]
EXAM DURATION: [how long is the exam]
EXAM FORMAT: [multiple choice / essay / short answer / case study / problem-solving / mix]
NUMBER OF QUESTIONS TO ANSWER: [how many questions and is there choice]
MY MAIN FEAR: [running out of time / going blank / overcomplicating answers / making careless errors / handwriting speed]
MY ACADEMIC LEVEL: [secondary / undergraduate / postgraduate]
MY TYPICAL PROBLEM IN EXAMS: [what usually goes wrong for me]

Deliver:
1. Pre-Exam Preparation (night before and morning of):
   - What to review and what NOT to review
   - Sleep, food, and physical preparation
   - Mental preparation techniques
2. Entering the Exam Hall (first 5 minutes):
   - How to read the paper strategically
   - How to plan your time across all questions
3. Question Answering Strategy:
   - What order to answer questions in (start with what you know)
   - How to tackle a question you''re unsure about
   - How to manage your time per question
4. Specific Technique for [my exam format] (e.g., how to write a great essay in 45 minutes / how to approach MCQs strategically)
5. If I Go Blank: 3 techniques to recover focus and restart
6. Final 10 Minutes: How to review and what to check
7. After the Exam: Why you should not discuss answers with classmates', '💡 PRO TIP: Start with the questions you know best. Building early confidence changes your entire exam psychology and unlocks access to what you know.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 11, 'The Dissertation Topic Selector', 'Identify and refine the perfect dissertation topic that is researchable, interesting, and achievable.', 'You are a dissertation supervisor who has seen thousands of students succeed and struggle with their dissertation topics. You know what makes a topic viable — scope, originality, data access, and supervisor approval.

Help me find and refine a dissertation topic:

MY DEGREE SUBJECT: [what you study]
ACADEMIC LEVEL: [undergraduate / postgraduate masters / PhD]
AREAS OF INTEREST: [list 3–5 topics, industries, or questions you find genuinely interesting]
WHAT I WANT TO AVOID: [topics that are overused / require data you can''t access / too broad]
METHODOLOGICAL PREFERENCE: [qualitative / quantitative / mixed / theoretical — or unsure]
DATA ACCESS: [what data, organisations, or respondents could I realistically access]
COUNTRY/REGIONAL CONTEXT: [Ghana / Africa / UK / Global — where is your focus]
WORD COUNT: [dissertation length]
TIME AVAILABLE: [how many months to complete it]

Deliver:
1. 5 Topic Ideas (each one specific and researchable — not just a broad area)
2. For each topic:
   - The Draft Research Question
   - Why this topic is strong (originality, relevance, feasibility)
   - Data sources you could use
   - Potential supervisor interest level
   - Any risks or challenges
3. My Top Recommendation with reasons
4. How to refine the selected topic into a precise research question
5. A 3-sentence topic pitch to present to your supervisor for approval', '💡 PRO TIP: Choose a topic you genuinely care about. You will spend 3–6 months with it. Passion is the only thing that keeps you going when it gets hard.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 12, 'The Critical Analysis Framework', 'Learn how to critically analyse any text, theory, policy, or argument like an academic.', 'You are an academic critical thinking coach who teaches students the difference between description and analysis — the single most important skill gap between a pass grade and a distinction.

Teach me how to critically analyse the following:

WHAT I AM ANALYSING: [a theory / a policy / a piece of literature / an argument / a business strategy / a historical event / a scientific study]
SPECIFIC TEXT OR CONCEPT: [name or describe what exactly you need to analyse]
MY SUBJECT: [your academic discipline]
THE QUESTION I AM ANSWERING: [the essay or exam question this analysis is for]
MY CURRENT APPROACH: [describe how you currently write about this — so I can show you what to change]

Deliver:
1. The Difference Between Description and Analysis (with an example using my specific topic)
2. The PEEL Framework applied to my topic (Point → Evidence → Explain → Link)
3. 5 Critical Analysis Questions to Ask About This Topic:
   - What assumptions does this make?
   - What does the evidence actually prove?
   - What are the limitations?
   - Who benefits and who doesn''t?
   - What alternative interpretations exist?
4. Academic Language for Critical Analysis (phrases to use instead of "I think" or "This shows")
5. A before/after example: take a weak, descriptive paragraph about my topic and rewrite it as a strong analytical paragraph
6. My personal guide to writing analytically in my specific discipline', '💡 PRO TIP: Every time you write a sentence that describes something, immediately ask ''so what?'' Your answer to that question is the analysis.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 13, 'The Note-Taking Optimizer', 'Transform your note-taking system to retain and recall information far more effectively.', 'You are a learning science specialist who applies cognitive psychology research to academic note-taking. You know that most students take notes in a way that creates the illusion of learning without actual retention.

Redesign my note-taking system for:

SUBJECT TYPE: [sciences / humanities / social sciences / law / mathematics / mixed]
CURRENT METHOD: [describe how you currently take notes — e.g., copying everything from slides / linear notes in a notebook / typing verbatim]
LEARNING GOAL: [exam preparation / essay writing / long-term understanding / all of the above]
HOW I LEARN BEST: [visual / reading/writing / auditory / kinesthetic — or unsure]
TOOLS AVAILABLE: [notebook / laptop / tablet / flashcard apps / all of the above]

Deliver:
1. What''s Wrong With My Current System (specific analysis of the gaps)
2. The Recommended Note-Taking Method for My Subject Type (e.g., Cornell Method / Mind Mapping / The Feynman Technique / Outline Method)
3. Step-by-Step Guide to Implementing the New Method:
   - During the lecture/class
   - Immediately after (the 10-minute consolidation habit)
   - During revision
4. How to Process Notes into Active Recall Material (flashcards, practice questions, concept maps)
5. A Sample Note Structure for My Subject (show me what a good set of notes looks like)
6. Weekly Review System (so notes don''t just sit in a folder never to be seen again)', '💡 PRO TIP: Taking notes is not learning. Processing and testing yourself on notes is learning. Build the habit of reviewing within 24 hours of every lecture.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 14, 'The Assignment Brief Decoder', 'Break down any confusing assignment brief so you know exactly what is expected.', 'You are an academic writing tutor who specialises in helping students understand exactly what their tutors want — before they write a single word.

Help me decode the following assignment brief:

ASSIGNMENT BRIEF: [paste the full assignment brief or question here]
COURSE/MODULE: [what module is this for]
MY ACADEMIC LEVEL: [undergraduate year 1 / year 2 / year 3 / postgraduate]
WORD COUNT: [the required length]
MARKING CRITERIA (if provided): [paste any marking rubric or assessment criteria given to you]
MY BIGGEST CONFUSION: [what specifically do you not understand or are unsure about]

Decode the brief by delivering:
1. What This Assignment Is Really Asking (in plain English — cut through academic jargon)
2. Command Words Decoded (e.g., "analyse" ≠ "describe" / "evaluate" ≠ "list" — explain what each key verb requires)
3. The Expected Structure (what sections or arguments should this assignment contain)
4. What a Strong Answer Looks Like vs a Weak Answer (based on the marking criteria)
5. Common Mistakes Students Make With This Type of Assignment
6. 3 Questions to Ask Your Tutor (if anything is still unclear — the right questions that show academic engagement)
7. A One-Sentence Thesis Statement Starter (based on your interpretation of the question)', '💡 PRO TIP: Email your tutor your decoded understanding and ask ''Is this the right direction?'' before investing 20 hours writing the wrong thing.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (3, 'STUDENT POWERPACK', 15, 'The Plagiarism-Free Paraphrasing Guide', 'Learn how to paraphrase academic sources properly to avoid accidental plagiarism.', 'You are an academic integrity specialist and writing coach who has helped students understand and avoid plagiarism without sacrificing the depth of their research.

Teach me how to properly paraphrase the following:

ORIGINAL TEXT TO PARAPHRASE: [paste the specific passage you need to paraphrase]
MY ESSAY QUESTION/TOPIC: [what argument you''re using this source to support]
REFERENCING STYLE: [APA / Harvard / MLA / Chicago]
AUTHOR & YEAR: [so I can cite correctly]
HOW I PLAN TO USE IT: [to support my argument / as evidence for a specific point / to introduce a concept]

Deliver:
1. Why the Original Text Cannot Be Used As-Is (if it requires paraphrasing)
2. Step-by-Step Paraphrasing Method:
   - Read and understand fully before writing anything
   - Identify the key ideas (not the words)
   - Close the original and write from memory
   - Check against the original (ideas same, words different)
3. My Paraphrased Version of the Text You Provided
4. The Correct In-Text Citation to accompany the paraphrase
5. A Reference List Entry for this source
6. The Line Between Paraphrasing and Plagiarism (with examples of what crosses it)
7. When to Use a Direct Quote Instead of Paraphrasing (and how to integrate it correctly)', '💡 PRO TIP: If more than 4–5 words in a row are the same as the original, rewrite the sentence entirely. Changing one word is not paraphrasing — it is plagiarism.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 1, 'The CV Rewriter', 'Transform a weak CV into a powerful, ATS-optimised document that gets interviews.', 'You are a senior recruitment consultant and CV specialist who has reviewed over 10,000 CVs and knows exactly what hiring managers and Applicant Tracking Systems (ATS) look for — and what immediately disqualifies a candidate.

Rewrite and optimise my CV based on the following:

CURRENT CV CONTENT: [paste your current CV here — or describe your experience and background if you don''t have one]
TARGET ROLE: [the specific job title you are applying for]
TARGET INDUSTRY: [the industry or sector]
KEY SKILLS FOR THIS ROLE: [list 5–8 skills you believe are essential for this position]
YEARS OF EXPERIENCE: [total professional experience]
HIGHEST QUALIFICATION: [your degree or highest educational achievement]
NOTABLE ACHIEVEMENTS: [list 3–5 specific accomplishments with numbers if possible — e.g., "Managed a team of 8" / "Increased sales by 35%"]
COUNTRY WHERE APPLYING: [this affects CV format and length expectations]

Deliver a fully rewritten CV including:
1. Professional Summary (3–4 lines — your headline value proposition, not an objective statement)
2. Core Skills / Competencies (8–12 keywords relevant to the role — optimised for ATS scanning)
3. Professional Experience (for each role: job title / company / dates / 4–6 bullet points starting with strong action verbs / quantified achievements)
4. Education (formatted correctly for the country and role)
5. Additional Sections (certifications, languages, volunteer work — only if relevant)
6. Formatting Guidance (what structure, font, and length works best for your situation)

Rules: Every bullet point must start with an action verb. Every achievement must be quantified where possible. No personal pronouns ("I" or "my"). No photos (for international applications). No "References available upon request."', '💡 PRO TIP: Tailor your CV for every application. A generic CV gets a generic rejection. Spend 20 minutes customising for each role — it makes a significant difference.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 2, 'The Cover Letter Craftsman', 'Write a compelling, tailored cover letter for any job application.', 'You are a talent acquisition expert and cover letter specialist who knows that most cover letters are either a CV summary or a grovelling plea — and both fail. A great cover letter tells a story, demonstrates specific knowledge of the company, and makes the reader want to meet you.

Write a compelling cover letter for:

JOB TITLE: [exact position title from the job advertisement]
COMPANY NAME: [who you''re applying to]
SOMETHING SPECIFIC ABOUT THIS COMPANY: [a recent news story / their mission / a product / their culture — show you''ve researched them]
WHY I WANT THIS SPECIFIC ROLE: [genuine reasons — not "great opportunity" but specific motivations]
MY STRONGEST RELEVANT EXPERIENCE: [your 2–3 most relevant credentials, achievements, or skills for this role]
ONE CHALLENGE THEY''RE PROBABLY FACING: [a business challenge or opportunity this role would address — your research, intuition, or industry knowledge]
HOW I''D ADDRESS IT: [briefly — how your skills or approach would help]
WORD COUNT: [250 / 350 / 500 words]
TONE: [formal / professional-warm / dynamic / creative]

Write a cover letter that:
1. Opens with something other than "I am writing to apply for..." — something that immediately communicates value or shared vision
2. Demonstrates genuine knowledge of the company in paragraph 2
3. Connects your specific experience to their specific needs in paragraph 3
4. Closes with a confident, forward-looking statement and a clear call to action (request for interview)
5. Never duplicates the CV — adds new context, stories, and personality', '💡 PRO TIP: The cover letter is your personality; the CV is your history. They should complement each other, never repeat each other.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 3, 'The Interview Master Prep', 'Prepare comprehensive answers to any interview question using proven frameworks.', 'You are an elite executive interview coach who has prepared candidates for interviews at top companies and institutions across multiple industries. You teach the STAR method and its advanced variants, and you know the hidden intent behind every interview question.

Prepare me for the following interview:

JOB TITLE: [the role I''m interviewing for]
COMPANY: [who is interviewing me]
INTERVIEW TYPE: [first round / second round / final / panel / competency-based / technical / case study / video]
MY BACKGROUND: [brief summary of your experience, skills, and current situation]
MY BIGGEST CONCERN ABOUT THIS INTERVIEW: [what are you most worried about — nerves / gaps in experience / specific question types]
THE ROLE''S KEY REQUIREMENTS: [what skills and qualities does this role demand]

Prepare and deliver:
1. The "Tell Me About Yourself" Answer (2-minute scripted answer — professional arc, not a biography)
2. 12 Most Likely Questions for This Role — for each:
   - The question
   - Why they ask it (what they''re really trying to discover)
   - A STAR-format answer template (Situation → Task → Action → Result — with placeholders for you to fill in)
   - The common mistake candidates make answering this
3. 5 Behavioural Questions with full model answers tailored to my background
4. Questions to Ask the Interviewer (5 smart, impressive questions — not "what''s the salary")
5. How to Address My Biggest Weakness Confidently
6. A 60-second closing statement ("Is there anything else you''d like to know about me?")', '💡 PRO TIP: Record yourself answering the top 5 questions. Watch it back. The gap between how you think you come across and how you actually come across is where the coaching happens.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 4, 'The Salary Negotiation Script', 'Negotiate your salary confidently with specific language and strategies.', 'You are a compensation negotiation specialist and career coach who has helped hundreds of professionals earn 15–30% more than their initial offer by negotiating with confidence and evidence.

Help me negotiate my salary for the following situation:

ROLE OFFERED: [job title]
COMPANY: [who is offering]
OFFERED SALARY: [what they''ve offered]
MY TARGET SALARY: [what you want to earn]
MY MARKET RESEARCH: [what similar roles pay in your location — or I''ll help you estimate]
MY STRONGEST LEVERAGE: [why you deserve more — relevant experience / competing offer / specialist skills / location requirements]
BENEFITS TO NEGOTIATE (besides base salary): [e.g., remote work / extra leave / signing bonus / performance review schedule / professional development budget]
MY SITUATION: [do I have a competing offer? am I currently employed? do I need this job urgently?]

Deliver:
1. My Negotiation Anchor (the number to open with — and why opening higher than your target is the strategy)
2. The Opening Script (exact words to say or write when initiating the negotiation)
3. Response Scripts for the 4 Most Common Pushbacks:
   - "That''s above our budget"
   - "We''ve given our best offer"
   - "We need to check with HR/management"
   - "Other candidates are available at the offered rate"
4. How to Negotiate the Whole Package (if base salary is fixed, what else to push for)
5. The Acceptance Script (how to accept gracefully once you reach agreement)
6. When to Stop Negotiating (and accept — versus walk away)', '💡 PRO TIP: Never negotiate without knowing the market rate. Research Glassdoor, LinkedIn Salary, and industry reports before any conversation. Data beats opinion every time.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 5, 'The LinkedIn Profile Optimizer', 'Transform your LinkedIn profile into a career asset that attracts recruiters and opportunities.', 'You are a LinkedIn personal branding specialist and talent recruitment expert who knows exactly how the LinkedIn algorithm surfaces profiles — and how recruiters search for candidates.

Optimise my LinkedIn profile for:

MY CURRENT ROLE OR TARGET ROLE: [what you do or want to do]
MY INDUSTRY: [your sector]
MY CAREER GOAL: [what opportunities you want LinkedIn to bring — new job / clients / speaking / partnerships / visibility]
MY BACKGROUND SUMMARY: [brief overview of your career history, skills, and achievements]
TARGET COMPANIES OR CLIENTS: [who you want to attract]
MY STRONGEST ACHIEVEMENTS: [3–5 quantified wins]

Optimise these key sections:
1. Headline (120 characters — NOT just your job title. Include your value proposition and 2 keywords)
2. About Section (2,000 characters max — first-person, story-driven, keyword-rich, ends with CTA)
3. Experience Section (for your 3 most recent roles — bullet points with quantified achievements)
4. Skills Section (the 10 most important skills to list for your industry — algorithm-weighted)
5. Featured Section (what to pin — post, article, portfolio, or media)
6. Recommendations Strategy (who to ask and what to ask them to say)
7. Connection & Content Strategy (how to grow your network and appear in recruiters'' searches)
8. Keywords to Include Throughout (the exact search terms recruiters use to find someone like you)', '💡 PRO TIP: Recruiters search LinkedIn like Google. Your headline and about section are your SEO. If you''re not findable, you''re invisible.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 6, 'The Career Change Navigator', 'Plan a successful career transition with a strategy, skills gap analysis, and action plan.', 'You are a career transition coach who specialises in helping professionals pivot industries, roles, and career directions without starting from scratch.

Help me plan my career change:

MY CURRENT ROLE/INDUSTRY: [what you do now]
MY TARGET ROLE/INDUSTRY: [where you want to go]
MY REASON FOR CHANGING: [be honest — burnout / better income / passion / relocation / industry decline]
MY TRANSFERABLE SKILLS: [list skills from your current career that are valuable in your target field]
MY GAPS: [what skills, qualifications, or experience do you lack for your target role]
TIMELINE: [how quickly do you need/want to make this change — 3 months / 6 months / 1 year / 2+ years]
FINANCIAL CONSTRAINTS: [can you afford to study / take a pay cut temporarily / or do you need income immediately]

Deliver:
1. Transferable Skills Audit (which of your current skills translate — and how to reframe them for your new field)
2. Skills Gap Analysis (what you specifically need to acquire — ranked by urgency and impact)
3. Learning Roadmap (courses, certifications, projects, or experiences to fill the gaps — free and paid options)
4. CV Repositioning Strategy (how to rewrite your CV to emphasise relevance to your new field)
5. Network Building Plan (who to connect with in your target industry and how)
6. First Job Strategy (should you take a step down temporarily / freelance / intern / start a side project first)
7. 90-Day Action Plan (the first things to do — broken into weeks)', '💡 PRO TIP: The fastest way into a new industry is through relationships, not applications. Find 10 people in your target field and ask to learn from them. Most people will say yes.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 7, 'The Job Search Strategy', 'Build a systematic, multi-channel job search plan that dramatically increases your chances.', 'You are a job search strategist and career coach who knows that most job seekers fail because they rely entirely on job boards — where competition is highest. You teach the hidden job market approach that gets candidates hired faster.

Build a job search strategy for:

TARGET ROLE: [what position are you looking for]
TARGET INDUSTRY: [your sector of interest]
LOCATION: [where you want to work — city / country / remote]
TIMELINE: [when do you need to be employed]
MY CURRENT SITUATION: [employed and searching quietly / unemployed / recent graduate / re-entering the workforce]
MY NETWORK STRENGTH: [strong professional network / moderate / starting from zero]
MY ONLINE PRESENCE: [LinkedIn / personal website / nothing yet]

Deliver a comprehensive strategy covering:
1. Job Board Strategy (which platforms to use for your specific role and industry — and how to set up alerts correctly)
2. Hidden Job Market Strategy (how to find and approach the 70% of jobs that are never advertised)
3. Network Activation Plan (how to reach out to your existing contacts without feeling like you''re begging)
4. Target Company List (how to build and approach a list of 20 companies you''d love to work for — even without open roles)
5. Application System (a tracker to manage applications, follow-ups, and interview stages)
6. Weekly Activity Targets (how many applications, outreach messages, and conversations per week)
7. Red Flags to Avoid (common mistakes that waste weeks of effort)', '💡 PRO TIP: 80% of jobs are filled through referrals and networking. If 80% of your search is on job boards, you''re fighting over the remaining 20%.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (4, 'CAREER & CV PACK', 8, 'The Resignation Letter Writer', 'Write a professional resignation letter that protects your reputation and exits gracefully.', 'You are a professional career transition coach and workplace communications expert. Write a resignation letter that is professional, gracious, and ensures you leave on the best possible terms.

MY CURRENT SITUATION:
- My Name: [your name]
- Current Role: [your job title]
- Company: [your employer]
- Manager''s Name: [who to address it to]
- Notice Period: [how much notice you are giving — check your contract]
- Last Working Day: [the exact date]
- Reason for Leaving (optional): [new role / personal reasons / relocation / further study — you don''t have to share]
- My Relationship With This Employer: [positive / neutral / difficult]
- Tone Required: [warm and grateful / professional and brief / formal]

Write:
1. The formal resignation letter (no longer than one page):
   - Clear statement of resignation and last working day
   - Brief gratitude (genuine — do not overdo it)
   - Offer to assist with the transition
   - Professional close
2. A verbal script for telling your manager in person (before handing in the letter)
3. How to handle the "Why are you leaving?" question professionally
4. What to do in your notice period to leave a great final impression
5. What NOT to do during your notice period (common mistakes that damage your reputation)', '💡 PRO TIP: Always resign in person first, then follow up with the written letter. Never resign by email alone unless circumstances genuinely prevent a face-to-face conversation.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 1, 'The Business Idea Validator', 'Test any business idea rigorously before investing time or money.', 'You are a seasoned startup advisor and business model strategist who has evaluated thousands of business ideas. You are direct, analytical, and you do not give false hope — but you also help refine weak ideas into strong ones.

Rigorously evaluate the following business idea:

MY BUSINESS IDEA: [describe your idea in as much detail as possible — what it is, how it works, who it serves, how it makes money]
MY LOCATION: [city and country — market context matters enormously]
MY BUDGET TO START: [how much capital you have or can access]
MY SKILLS AND BACKGROUND: [what relevant skills, knowledge, or networks you bring]
MY TIME AVAILABILITY: [full-time / part-time / weekends only]
THE PROBLEM I''M SOLVING: [what specific pain point does this address]
WHO MY COMPETITOR IS: [existing solutions — even imperfect ones — that people currently use]

Evaluate across 7 dimensions:
1. Problem Validity (Is the problem real and painful enough that people will pay to solve it?)
2. Market Size (Is there enough demand to build a sustainable business?)
3. Competition Analysis (How crowded is this space — and what''s your edge?)
4. Business Model Viability (How do you make money — and is the unit economics logical?)
5. Founder-Market Fit (Are you the right person to build this — and why?)
6. Capital Requirements (What do you actually need to start — minimum viable version)
7. First Revenue Path (What is the fastest, cheapest way to your first paying customer?)

Score each dimension 1–10 with brief explanation.
Overall Verdict: Strong / Needs Work / Pivot Recommended — with specific reasons.
Top 3 Risks to address before starting.
One key question to answer before committing any resources.', '💡 PRO TIP: The single most important test: go find 10 potential customers and ask them to pay before you build anything. Real money beats survey responses every time.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 2, 'The Pricing Strategy Architect', 'Set the right price for any product or service to maximise revenue and position your brand.', 'You are a pricing strategy consultant who has helped businesses across multiple industries find the pricing sweet spot — high enough to be profitable and positioned, low enough to convert.

Help me price the following:

WHAT I AM SELLING: [describe your product or service in detail]
MY TARGET CUSTOMER: [who buys this — their demographics, income level, and how they make purchase decisions]
MY COSTS: [what does it cost you to produce/deliver this — materials, time, overhead]
MY COMPETITORS'' PRICING: [what do similar products or services cost in your market]
MY POSITIONING GOAL: [budget option / mid-market / premium / luxury]
MY REVENUE GOAL: [how much do you want to earn per month from this]
MY MARKET: [Ghana / Africa / UK / US / global — pricing is contextual]

Deliver:
1. Recommended Price Point with full justification
2. Pricing Model Options (one-time / subscription / tiered / hourly / value-based / freemium) — recommend the best for my business
3. Tiered Pricing Structure (Basic / Standard / Premium packages with what''s included in each)
4. Psychological Pricing Tactics (why GHS 99 outperforms GHS 100 / charm pricing / anchoring)
5. How to Raise Prices Without Losing Customers (when you''re ready to grow)
6. What to Do If Customers Say You''re Too Expensive (3 responses that don''t require a discount)
7. Break-Even Analysis (how many units/clients you need per month to be profitable at this price)', '💡 PRO TIP: Raise your prices before you feel ready. Most entrepreneurs underprice by 30–50% because of their own psychology, not market reality.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 3, 'The First 10 Customers Plan', 'Get your first 10 paying customers with zero advertising budget.', 'You are a startup growth advisor who specialises in early-stage customer acquisition. You know that the strategies that get your first 10 customers are completely different from the strategies that get your first 1,000.

Build a plan to get my first 10 paying customers:

MY BUSINESS: [what you sell and what problem it solves]
MY TARGET CUSTOMER: [describe them specifically — where they are, what they do, what they want]
MY LOCATION: [city and country]
MY NETWORK: [describe your existing network — family, friends, colleagues, social media following]
MY BUDGET FOR ACQUISITION: [GHS 0 / Under GHS 100 / Under GHS 500]
MY TIMELINE: [I need first customers in 2 weeks / 1 month / 3 months]

Deliver a step-by-step plan:
1. The Fastest Path to First Customer (the single most likely place your first paying customer already exists — in your network, community, or daily environment)
2. Personal Outreach Script (exact message to send to people in your network who could be customers or refer customers)
3. Community Strategy (which online and offline communities your customer lives in — and how to show up there genuinely)
4. Free Value Strategy (what to give away to demonstrate your product/service quality and earn the right to ask for a sale)
5. The Referral Ask (how to ask your first 2–3 customers to refer others)
6. Week-by-Week Activity Plan (specific actions per week to hit 10 customers)
7. How to Document Early Customer Wins (the testimonials and case studies that fuel customers 11–100)', '💡 PRO TIP: Your first 10 customers will come from relationships, not marketing. Make a list of 50 people who know you. That list is your first sales pipeline.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 4, 'The Social Media Launch Strategy', 'Plan a pre-launch and launch social media strategy for a new business or product.', 'You are a social media growth strategist who specialises in business launches. You know that the difference between a launch that generates 500 customers and one that generates 5 is the pre-launch strategy — not the launch day post.

Build a social media launch strategy for:

WHAT I AM LAUNCHING: [describe your product, service, or business]
MY PLATFORMS: [Instagram / Facebook / TikTok / Twitter/X / LinkedIn — list what you''ll use]
MY TARGET AUDIENCE: [who you want to reach]
LAUNCH DATE: [when are you launching]
CURRENT FOLLOWING: [how many followers do you have on each platform — even if zero]
BUDGET FOR PAID PROMOTION: [GHS 0 / under GHS 200 / under GHS 500]
MY UNIQUE SELLING POINT: [what makes this different from what''s already available]

Deliver a 3-phase strategy:

PHASE 1 — PRE-LAUNCH (4 weeks before):
- Teaser content strategy (what to post without revealing everything)
- Waitlist/interest gathering tactic
- Influencer or community partner outreach
- Daily content plan for the pre-launch period

PHASE 2 — LAUNCH WEEK (7 days):
- Day-by-day post plan
- Launch day posting schedule (what time to post what on which platform)
- Engagement strategy (how to respond and amplify)
- Launch offer or incentive

PHASE 3 — POST-LAUNCH (2 weeks after):
- How to maintain momentum
- Testimonial and social proof strategy
- What to do if it underperforms', '💡 PRO TIP: Build your audience before you launch. Announcing to 0 followers is like opening a shop with no foot traffic. Spend at least 4 weeks building before launch day.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 5, 'The Offer Irresistibility Audit', 'Make your product or service offer so compelling that potential customers feel foolish saying no.', 'You are an offer design specialist and direct-response copywriter who has studied Alex Hormozi''s $100M Offers framework and applied it across dozens of businesses. You know that a weak offer — not a lack of marketing — is why most businesses fail.

Analyse and dramatically improve my offer:

MY CURRENT OFFER: [describe exactly what you currently sell, at what price, with what inclusions]
MY TARGET CUSTOMER: [who buys this — their biggest fear, biggest desire, and what keeps them up at night]
MY RESULTS/OUTCOMES: [what specific transformation or result does the customer get]
MY MARKET: [describe your competitive landscape briefly]
MY PRICE POINT: [what you currently charge]
MY CONVERSION PROBLEM: [what objections or hesitations do customers express]

Evaluate and redesign my offer using these principles:
1. Dream Outcome Analysis (what is the customer REALLY buying — the emotion and result, not the product)
2. Perceived Value Audit (what is the gap between what I charge and what the customer thinks it''s worth — and why)
3. Bonuses & Stacking (what additional items, resources, or services can I add that cost me little but add significant perceived value)
4. Risk Reversal (how to structure a guarantee that removes the customer''s fear of making a wrong decision)
5. Urgency & Scarcity (legitimate, ethical reasons for them to act now)
6. The Rewritten Offer (a new, dramatically improved offer description — price, inclusions, bonuses, guarantee, CTA)
7. The One-Sentence Offer Summary (so clear a 10-year-old would understand and want it)', '💡 PRO TIP: The goal of an irresistible offer is to make the customer feel that NOT buying is the risk. Achieve that, and selling becomes easy.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 6, 'The Business Name Generator', 'Find the perfect business name that is memorable, available, and reflects your brand.', 'You are a brand naming strategist and trademark specialist. You generate business names that are distinctive, memorable, spell-correct, and available for use as a domain and social handle.

Generate business name options for:

WHAT MY BUSINESS DOES: [describe it clearly]
MY TARGET AUDIENCE: [who the customers are]
MY BRAND PERSONALITY: [e.g., bold and modern / warm and approachable / premium and exclusive / fun and playful / serious and trustworthy]
WORDS/THEMES I LIKE: [any words, concepts, or imagery that resonate with your vision]
WORDS TO AVOID: [anything you don''t want in the name]
LANGUAGES: [English only / English + local language blend / any language]
NAME LENGTH PREFERENCE: [one word / two words / no preference]
INDUSTRY: [your sector]

Generate 20 name options across these styles:
- 5 Invented/Coined Words (completely original — easy to trademark and own)
- 5 Descriptive Names (clearly communicate what you do)
- 5 Metaphorical Names (evoke a feeling or concept without being literal)
- 5 Personal/Story Names (founder-based or origin-story names)

For each name:
- Write the name
- One-sentence rationale
- Check if .com or .co is likely available (note: verify before using — availability changes)
- Rate it 1–10 for memorability, relevance, and differentiation

Top 3 Recommendations with full reasoning.', '💡 PRO TIP: A great name is easy to spell, easy to say out loud, and doesn''t need to be explained. Test it by saying it to 5 people and asking them to spell it back to you.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 7, 'The Marketing Plan Builder', 'Create a focused, realistic 90-day marketing plan for a small business or side hustle.', 'You are a small business marketing consultant who creates practical, budget-conscious marketing plans — not theoretical frameworks that collect dust.

Build a 90-day marketing plan for:

MY BUSINESS: [what I sell and who I sell it to]
MY REVENUE GOAL FOR 90 DAYS: [how much do you want to earn in this period]
MY CURRENT MARKETING: [what am I already doing, if anything]
MY MARKETING BUDGET: [how much can I spend per month on marketing]
MY BIGGEST STRENGTH: [what do I do better than competitors]
MY CHANNELS: [which marketing channels am I comfortable with / willing to try]
MY LOCATION: [online only / local / both]

Deliver:
1. Marketing Goal (translate revenue goal into specific marketing metrics — e.g., X website visitors / X leads / X social followers / X referrals)
2. Target Customer Profile (one very specific person — their name, age, life situation, where they spend time online and offline)
3. Core Message (the one thing your marketing must communicate — your unique value in one sentence)
4. 90-Day Channel Strategy (3 channels maximum — depth over breadth)
   - Month 1: Foundation building
   - Month 2: Amplification
   - Month 3: Conversion optimisation
5. Content Calendar Themes (weekly themes for 12 weeks)
6. Budget Allocation (how to spend your monthly marketing budget for maximum ROI)
7. Success Metrics (how to measure if this plan is working — weekly and monthly KPIs)', '💡 PRO TIP: Pick 2 channels maximum and go deep. A business with 1,000 true fans on one platform beats a business with 200 followers across 8 platforms every time.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (5, 'SIDE HUSTLE STARTER', 8, 'The Customer Avatar Creator', 'Build a detailed ideal customer profile that sharpens every marketing and product decision.', 'You are a market research specialist and customer psychology expert. You build customer avatars so detailed and accurate that businesses feel like they already know their customers personally — before they''ve even met them.

Help me build my ideal customer avatar:

MY PRODUCT/SERVICE: [what you sell]
WHAT PROBLEM I SOLVE: [the core pain point you address]
WHO I THINK MY CUSTOMER IS: [your current best guess — demographics, location, interests]
CUSTOMERS I HAVE ALREADY (if any): [describe your best current customers]
CUSTOMERS I DO NOT WANT: [who is not a good fit]

Build a complete avatar with:
1. Demographics (age range / gender / location / income / education / occupation / relationship status)
2. Psychographics (values / beliefs / worldview / personality type / lifestyle)
3. Goals & Desires (what they desperately want to achieve — professionally and personally)
4. Pain Points & Frustrations (what keeps them awake at night / what they''re sick of / what they''ve tried that hasn''t worked)
5. Watering Holes (where they spend time online and offline — specific platforms, communities, events, media)
6. Buying Behaviour (how they make purchasing decisions / what they read before buying / who influences them)
7. Objections to Buying From Me (the top 3 reasons they might hesitate)
8. The Transformation (before → after — their life before and after experiencing my product/service)
9. The One-Sentence Avatar Summary ("My customer is [NAME], a [occupation] who wants to [goal] but struggles with [pain] and will buy from me because [reason].")', '💡 PRO TIP: Print this avatar and put it somewhere you can see it when you create content, write copy, or make product decisions. Every decision should be made with this person in mind.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 1, 'The Life Goals Clarifier', 'Get crystal clear on what you actually want from your life — not what you think you should want.', 'You are a life coaching specialist who uses evidence-based coaching techniques to help people cut through the noise of other people''s expectations and discover what they genuinely want from their lives.

Help me get clear on my life goals through the following:

MY CURRENT LIFE SITUATION: [describe where you are right now — your work, relationships, finances, location, daily life]
WHAT I KNOW I WANT: [the goals, outcomes, or feelings you are certain about]
WHAT I THINK I WANT (BUT AM UNSURE): [goals that feel right but you haven''t fully committed to]
WHAT OTHERS EXPECT OF ME: [family, culture, social expectations — be honest]
MY BIGGEST FEAR ABOUT MY FUTURE: [what outcome scares you most]
MY IDEAL DAY (if I imagine it perfectly): [describe your perfect ordinary day 5 years from now — in detail]

Guide me through a structured goal clarity process:
1. The Life Wheel (rate 1–10: career / finances / health / relationships / personal growth / fun & recreation / family / purpose — then identify where the biggest gaps are)
2. The Deathbed Test (what would you regret NOT having done — this reveals your true priorities)
3. Values Excavation (identify your top 5 core values and how well your current life aligns with them)
4. Goal Setting Across 3 Time Horizons:
   - 1 Year: What must I accomplish?
   - 3 Years: What do I want my life to look like?
   - 10 Years: Who do I want to have become?
5. The One Big Goal (if I could only achieve one thing this year, what matters most)
6. Obstacle Identification (what internal and external barriers stand between me and these goals)
7. First Concrete Step (the smallest possible action I can take in the next 48 hours)', '💡 PRO TIP: Revisit this exercise every 6 months. What you want changes as you grow. The goal is not to find the perfect answer once — it''s to keep asking the right questions.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 2, 'The Daily Journaling System', 'Build a personalised daily journaling practice that builds self-awareness and drives progress.', 'You are a positive psychology practitioner and journaling coach who has helped hundreds of people build consistent self-reflection habits. You know that generic journal prompts feel hollow — specific, personalised questions create breakthrough insights.

Build a personalised daily journaling system for me:

MY GOALS RIGHT NOW: [what am I working toward — professionally and personally]
MY BIGGEST CHALLENGES: [what am I struggling with — mentally, emotionally, practically]
WHAT I WANT TO CULTIVATE: [e.g., gratitude / clarity / confidence / calm / creativity / discipline]
TIME AVAILABLE FOR JOURNALING: [5 minutes / 10 minutes / 20 minutes / 30 minutes]
PREFERRED TIME: [morning / evening / both]
JOURNALING EXPERIENCE: [never journaled / tried but stopped / consistent practice]

Deliver:
1. My Morning Journal Template (questions to start every day — tailored to my specific goals and challenges)
2. My Evening Journal Template (questions to end every day — reflection, gratitude, progress, preparation)
3. 30 Deep-Dive Prompts (for days when I want to go deeper — one for every day of the month)
4. The Weekly Review Template (a more comprehensive Sunday or Friday reflection)
5. The Monthly Review Template (big-picture reflection on progress, patterns, and pivots)
6. The Journaling Habit Trigger (how to make this automatic — linking it to an existing habit)
7. What to Do When You Have Nothing to Write (the 2-minute minimum technique)', '💡 PRO TIP: The journal entry you write when you least feel like it is usually the most valuable. Those are the moments the real thoughts surface.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 3, 'The Habit Architecture System', 'Design and install powerful new habits using the science of behaviour change.', 'You are a behavioural psychology coach who applies the science of habit formation — James Clear''s Atomic Habits principles, BJ Fogg''s Tiny Habits, and Nir Eyal''s Indistractable — to help people build lasting positive habits.

Help me design and install a new habit:

THE HABIT I WANT TO BUILD: [describe the specific habit you want — be precise]
WHY I WANT THIS HABIT: [the real reason — what outcome or identity does it serve]
MY PREVIOUS ATTEMPTS: [what have you tried before and why did it fail]
MY CURRENT DAILY ROUTINE: [what does your typical day look like — morning to night]
MY ENVIRONMENT: [where do you live, work, spend time — what''s around you]
MY BIGGEST OBSTACLE: [what makes this habit hard for you specifically]
AVAILABLE TIME: [when in your day could this habit realistically happen]

Deliver a complete habit design:
1. Habit Stacking Plan (which existing habit to attach the new one to — using "After I [CURRENT HABIT], I will [NEW HABIT]")
2. The Minimum Version (the smallest possible version of this habit that still counts — for bad days)
3. The Environment Design (physical and digital changes to make the habit easier and remove friction)
4. The Cue-Routine-Reward Loop (design each element specifically for my habit)
5. The Identity Statement (reframing the habit as identity: not "I''m trying to exercise" but "I am someone who moves every day")
6. The 2-Week Progressive Habit Plan (start ridiculously small, increase gradually)
7. The Relapse Recovery Protocol (exactly what to do when I miss a day — so one miss never becomes two)', '💡 PRO TIP: Never miss twice. One missed day is an accident. Two missed days is the start of a new (bad) habit. The rule is simple: never miss twice.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 4, 'The Mental Models Library Builder', 'Learn and apply the most powerful mental models to make better decisions in every area of life.', 'You are a cognitive strategist and decision-making expert who teaches mental models — the frameworks that allow smart people to think more clearly, make better decisions, and avoid predictable mistakes.

Teach me the most relevant mental models for my situation:

MY BIGGEST DECISION OR CHALLENGE RIGHT NOW: [describe what you''re trying to figure out or decide]
AREAS OF LIFE I WANT TO THINK BETTER IN: [career / finance / relationships / business / health / all of the above]
CURRENT THINKING PATTERNS I KNOW ARE WEAKNESSES: [e.g., overthinking / impulsive decisions / people-pleasing / analysis paralysis / short-term thinking]
MY LEARNING STYLE: [conceptual with examples / practical frameworks / stories / all of the above]

Teach me 10 mental models that directly apply to my situation:
For each model:
1. Model Name & Origin (who developed it and in what field)
2. The Core Concept (explained simply in 3–5 sentences)
3. Real-World Example (a relatable, concrete example — not abstract)
4. How to Apply It to My Specific Situation
5. Common Misapplication (how people misuse this model)
6. One Question to Ask Yourself (to trigger this model when needed)

End with: A personalised "thinking toolkit" summary — 5 models to apply to my current biggest challenge, in order of relevance.', '💡 PRO TIP: Mental models are only valuable when they become reflexive. Pick 2–3 from this list and consciously apply them every day for 30 days before adding more.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 5, 'The Personal Finance System Builder', 'Build a simple, effective personal finance system that works for your income and lifestyle.', 'You are a personal finance coach who specialises in practical money management for people at all income levels. You know that the best financial system is the one someone will actually use — not the most complex one.

Build a personal finance system for me:

MY MONTHLY INCOME (after tax): [your take-home income in your currency]
MY FIXED MONTHLY EXPENSES: [rent, utilities, loan payments, subscriptions — list them with amounts]
MY VARIABLE MONTHLY EXPENSES: [food, transport, entertainment — estimate monthly totals]
MY CURRENT SAVINGS: [how much do you currently have saved]
MY FINANCIAL GOALS: [e.g., emergency fund / pay off debt / save for X / invest / start a business]
MY BIGGEST FINANCIAL WEAKNESS: [overspending in a specific category / no savings habit / debt cycle / no tracking]
MY PAYMENT METHODS: [cash / mobile money / bank account / all of the above]

Build my complete financial system:
1. Budget Framework (recommend the right budgeting method for my situation — 50/30/20 / zero-based / envelope / reverse budgeting — and explain why)
2. Monthly Budget Breakdown (allocate my income across categories with specific amounts)
3. Savings Architecture (separate savings buckets — emergency fund / short-term goals / long-term goals — and how much to put in each)
4. Debt Elimination Plan (if applicable — which method: avalanche / snowball, and in what order)
5. Spending Audit (based on my expenses, where am I likely leaking money — 3 specific areas to cut)
6. Simple Tracking System (a daily, weekly, and monthly money review habit — takes under 10 minutes)
7. First 30-Day Action Plan (exactly what to do this month to start building this system)', '💡 PRO TIP: Track every pesewa for 30 days before making any budget decisions. You cannot manage what you cannot see. The data always surprises you.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 6, 'The Self-Confidence Builder', 'Systematically build genuine confidence in a specific area of your life.', 'You are a confidence coach who works with the science of self-efficacy — Albert Bandura''s research on building genuine confidence through mastery experiences, social modelling, and physiological management. You do not believe in fake positivity — you build real confidence through real action.

Help me build confidence in the following area:

THE AREA WHERE I LACK CONFIDENCE: [e.g., public speaking / social situations / business / asking for what I want / my physical appearance / creative work / leadership]
HOW THIS LACK OF CONFIDENCE AFFECTS MY LIFE: [what does it stop you from doing or being]
WHERE THIS CAME FROM (if known): [any experiences, criticism, or patterns that created this belief]
PAST EVIDENCE THAT CONTRADICTS MY SELF-DOUBT: [times you''ve succeeded or been capable — even small ones]
WHAT CONFIDENT LOOKS LIKE TO ME: [describe a person you see as confident in this area]

Build a confidence-building programme:
1. The Root Belief (identify the core limiting belief — stated exactly as you say it to yourself)
2. The Evidence Challenge (systematically dismantle the limiting belief with counter-evidence from your own life)
3. The Competence Ladder (break the confidence area into 10 progressive micro-challenges — easy to hard — that build mastery evidence)
4. Weekly Action Plan (which challenges to take this week — starting ridiculously small)
5. Nervous System Management (practical techniques to manage fear and anxiety in confidence-testing moments — breathing, body language, pre-event routines)
6. Social Modelling (find 2–3 role models in this area and identify exactly what behaviours to observe and adopt)
7. Evidence Journal (how to track and record confidence wins so the brain updates its self-belief)', '💡 PRO TIP: Confidence is built from the outside in, not the inside out. You don''t get confidence and then act — you act, and then you get confidence. Start before you''re ready.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 7, 'The Morning Routine Designer', 'Design a personalised morning routine that sets you up for peak performance every day.', 'You are a peak performance coach who has studied the morning routines of high performers across business, athletics, arts, and science. You know that the best morning routine is the one that fits your life — not a 4am-cold-shower-meditation-marathon that nobody sustains.

Design my ideal morning routine:

WAKE-UP TIME (realistic): [what time can I genuinely wake up consistently]
AVAILABLE MORNING TIME: [how many minutes or hours before I must leave or start work]
MY GOALS RIGHT NOW: [what am I trying to achieve — health / focus / income / creativity / peace / all of the above]
MY CURRENT MORNING: [describe what you currently do from waking up to starting your day]
WHAT I WANT TO FEEL BY 9AM: [energised / focused / calm / motivated / clear / all]
MY CONSTRAINTS: [kids / shared home / no exercise equipment / no quiet space / etc.]
NON-NEGOTIABLES: [habits you already have that you won''t give up]

Design a personalised morning routine:
1. The Minimum Viable Morning (for days when everything goes wrong — 15-minute version)
2. The Standard Morning (your ideal daily routine — minute by minute from wake-up to start-of-work)
3. The Power Morning (for your best days or weekends — extended version)
4. Rationale for Each Element (why each habit is in your routine — evidence-based benefit)
5. The Transition Habit (the trigger that signals "morning is done, work begins")
6. 21-Day Implementation Plan (how to install this routine gradually — not all at once)
7. What to Do When You Sleep In (so one late morning doesn''t derail the whole week)', '💡 PRO TIP: The most important part of a morning routine is what you do the night before. Lay out your clothes, set your journal open, and prep your environment. The routine starts the night before.');
insert into prompts (package_id, category, prompt_number, title, summary, prompt, pro_tip) values (6, 'PERSONAL GROWTH PACK', 8, 'The Emotional Intelligence Builder', 'Develop the emotional intelligence skills that determine your success in relationships, career, and life.', 'You are an emotional intelligence coach trained in the work of Daniel Goleman, Brené Brown, and Susan David. You help people develop the four domains of EQ: self-awareness, self-management, social awareness, and relationship management.

Build my emotional intelligence in the following area:

MY BIGGEST EQ CHALLENGE: [e.g., I lose my temper easily / I shut down when criticised / I can''t say no / I don''t understand how others feel / I avoid difficult conversations / I''m overwhelmed by other people''s emotions]
HOW THIS PATTERN SHOWS UP: [give 2–3 specific recent examples of when this EQ gap caused a problem]
RELATIONSHIPS MOST AFFECTED: [work / romantic / family / friendships / all]
MY CURRENT STRATEGY: [what do you currently do when this triggers — if anything]
WHAT I WANT INSTEAD: [describe how you''d ideally respond in those moments]

Deliver a practical EQ development plan:
1. The Pattern Analysis (what is actually happening in these moments — the trigger, the thought, the feeling, the reaction)
2. The Pause Protocol (a specific, personalised technique to create space between trigger and response)
3. The Emotional Vocabulary Builder (expand your ability to identify and name emotions precisely — beyond "angry" or "sad")
4. The Empathy Practice (daily exercises to develop your ability to read and understand others)
5. The Difficult Conversation Framework (how to have conversations you''ve been avoiding)
6. The Self-Compassion Practice (how to process failures and criticism without self-destruction or defensiveness)
7. Weekly EQ Reflection Questions (to track your progress and identify patterns)', '💡 PRO TIP: The moment you feel a strong emotional reaction is the exact moment your EQ is being tested. The pause between feeling and responding is where intelligence lives.');