.class Lcom/railty/cerfandroid/LauncherActivity$15$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

.field final synthetic val$result:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$15;Ljava/io/IOException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->val$result:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$1700(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->val$result:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CF \uc774\ubbf8\uc9c0 \uc0dd\uc131 \uc2e4\ud328: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->val$result:Ljava/io/IOException;

    .line 509
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 510
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v2, v2, Lcom/railty/cerfandroid/LauncherActivity$15;->val$outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v0

    const-string v2, "cf"

    iput-object v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$1800(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 515
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$200(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 516
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ube48 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget v3, v3, Lcom/railty/cerfandroid/LauncherActivity$15;->val$dataMb:I

    const/16 v4, 0x40

    if-gt v3, v4, :cond_1

    const-string v3, "FAT16"

    goto :goto_0

    :cond_1
    const-string v3, "FAT32"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CF \uc774\ubbf8\uc9c0 \uc0dd\uc131\ub428: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$15$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$15;

    iget-object v3, v3, Lcom/railty/cerfandroid/LauncherActivity$15;->val$outputFile:Ljava/io/File;

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 519
    return-void
.end method
