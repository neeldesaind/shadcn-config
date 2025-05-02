#!/bin/bash

echo "📦 Checking if ShadCN UI is initialized..."

# Ensure components.json exists before continuing
if [ ! -f "./components.json" ]; then
  echo "🔧 Initializing ShadCN UI with --force..."

  # Run `expect` to handle the prompt and force installation
  expect -c "
    spawn npx shadcn@latest init
    expect \"How would you like to proceed?\" 
    send \"--force\r\"
    expect eof
  "
else
  echo "✅ ShadCN UI is already initialized."
fi

# List of components to install
components=(
  alert
  alert-dialog
  avatar
  badge
  button
  calendar
  card
  carousel
  checkbox
  collapsible
  combobox
  command
  context-menu
  data-table
  date-picker
  dialog
  dropdown-menu
  form
  hover-card
  input
  label
  menubar
  navigation-menu
  pagination
  popover
  progress
  radio-group
  scroll-area
  select
  separator
  sheet
  skeleton
  slider
  sonner
  switch
  table
  tabs
  textarea
  toast
  toggle
  tooltip
)

# Install all components one by one using the updated CLI
echo "🚀 Installing all ShadCN components..."

for component in "${components[@]}"; do
  echo "🔧 Installing: $component"
  npx shadcn@latest add "$component"
done

echo "✅ All components installed successfully."