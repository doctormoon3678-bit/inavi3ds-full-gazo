.class public final Lcom/railty/cerfandroid/ShortcutLaunchActivity;
.super Landroid/app/Activity;
.source "ShortcutLaunchActivity.java"


# static fields
.field static final EXTRA_COMMAND:Ljava/lang/String; = "com.railty.cerfandroid.SHORTCUT_COMMAND"

.field static final EXTRA_CONTAINER:Ljava/lang/String; = "com.railty.cerfandroid.SHORTCUT_CONTAINER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/railty/cerfandroid/ShortcutLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.railty.cerfandroid.SHORTCUT_CONTAINER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/railty/cerfandroid/ShortcutLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.railty.cerfandroid.SHORTCUT_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    .line 20
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0, p1}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->MarkRun(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v1, "com.railty.cerfandroid.AUTORUN"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/ShortcutLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/railty/cerfandroid/ShortcutLaunchActivity;->finish()V

    .line 32
    return-void

    .line 21
    :cond_1
    :goto_0
    const-string p1, "\ubc14\ub85c\uac00\uae30\uc758 \ucee8\ud14c\uc774\ub108\ub97c \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 22
    invoke-virtual {p0}, Lcom/railty/cerfandroid/ShortcutLaunchActivity;->finish()V

    .line 23
    return-void
.end method
