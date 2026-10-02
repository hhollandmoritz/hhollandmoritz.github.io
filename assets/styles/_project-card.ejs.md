```{=html}
<div class="project-card-grid">
<% for (const item of items) { %>

  <div class="project-card">
    <a href="<%- item.path %>">

      <img
        src="<%- item.image %>"
        alt="<%- item.title %>"
        class="project-card-image"
      >

      <div class="project-card-overlay">
        <h2><%= item.title %></h2>

        <% if (item.description) { %>
          <p><%= item.description %></p>
        <% } %>
      </div>

    </a>
  </div>

<% } %>
</div>
```
