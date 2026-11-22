.class Lcom/railty/cerfandroid/LauncherActivity$22$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

.field final synthetic val$result:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$22;Ljava/io/IOException;)V
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

    .line 768
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->val$result:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 770
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$2400(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->val$result:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CF \uc774\ubbf8\uc9c0 \uc0dd\uc131 \uc2e4\ud328: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->val$result:Ljava/io/IOException;

    .line 773
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 774
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v2, v2, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    .line 777
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object v0

    const-string v2, "cf"

    iput-object v2, v0, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$2500(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 779
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$200(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 780
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$22;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ube48 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 781
    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget v3, v3, Lcom/railty/cerfandroid/LauncherActivity$22;->val$dataMb:I

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

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$22$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$22;

    iget-object v3, v3, Lcom/railty/cerfandroid/LauncherActivity$22;->val$outputFile:Ljava/io/File;

    .line 782
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 783
    return-void
.end method
