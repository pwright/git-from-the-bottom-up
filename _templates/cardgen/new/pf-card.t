---
to: ./cards/card-<%= filename %>.html
---
<div class="pf-c-card pf-m-hoverable pf-m-compact" id="card-2">
    <div class="pf-c-card__title">
      <a href="didact://?commandId=vscode.didact.startDidact&text=file://{docdir}/<%= filename %>.adoc"><%= name %></a>
      <div class="pf-c-content">
        <small><%= summary %></small>
      </div>
    </div>
    <div class="pf-c-card__body">
      <%= text %>
      </div>
  </div>
