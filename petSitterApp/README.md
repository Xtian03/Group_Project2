
Services/Show

<h4>Services Provided</h4>
<div class="container">
  <div class="row">
  <% @userall.each do |u| %>
  <% @all_services.each do |s| %>
    <div class="listImage">
  <%= link_to 'Show', user %>
      <p><%= u.name %></p>
      <p><%= u.location %></p>
      <p><%= s.name %></p>
      <p><%= s.description %></p>
      <p><%= s.price %></p>
      <hr>
    </div>
  <% end %>
  <% end %>
  </div>
</div>
