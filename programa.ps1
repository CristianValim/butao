
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Criar janela
$form = New-Object System.Windows.Forms.Form
$form.Text = "uma pergunta importante"
$form.Size = New-Object System.Drawing.Size(440, 260)
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false

# Frase
$label = New-Object System.Windows.Forms.Label
$label.Text = "vose me daria um bjo?"
$label.Font = New-Object System.Drawing.Font("Arial", 16)
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(115, 35)
$form.Controls.Add($label)

# Botão SIM
$sim = New-Object System.Windows.Forms.Button
$sim.Text = "siiiiiim"
$sim.Size = New-Object System.Drawing.Size(90, 40)
$sim.Location = New-Object System.Drawing.Point(100, 130)
$form.Controls.Add($sim)

# Botão NÃO
$nao = New-Object System.Windows.Forms.Button
$nao.Text = "nao af"
$nao.Size = New-Object System.Drawing.Size(90, 40)
$nao.Location = New-Object System.Drawing.Point(230, 130)
$form.Controls.Add($nao)

# Fazer o botão NÃO fugir do rato
$nao.Add_MouseEnter({

    $maxX = $form.ClientSize.Width - $nao.Width
    $maxY = $form.ClientSize.Height - $nao.Height

    $random = New-Object System.Random

    $x = $random.Next(0, $maxX)
    $y = $random.Next(90, $maxY)

    $nao.Location = New-Object System.Drawing.Point($x, $y)
})

# Ação do SIM
$sim.Add_Click({

    [System.Windows.Forms.MessageBox]::Show(
        "ebaaa entao manda foto pelada rs",
        "xd",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Information
    )

    $form.Close()
})

# Mostrar janela
[void]$form.ShowDialog()
