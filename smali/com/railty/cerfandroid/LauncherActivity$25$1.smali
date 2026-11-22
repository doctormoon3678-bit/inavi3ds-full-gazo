.class Lcom/railty/cerfandroid/LauncherActivity$25$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/LauncherActivity$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$25;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$25;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1264
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Done(Ljava/lang/String;)V
    .locals 3

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    iget-object v1, v1, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    iget-object v2, v2, Lcom/railty/cerfandroid/LauncherActivity$25;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    .line 1269
    invoke-static {v1, v2, p1}, Lcom/railty/cerfandroid/Containers;->Duplicate(Landroid/content/Context;Lcom/railty/cerfandroid/Containers$Info;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object p1

    iget-object p1, p1, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    .line 1268
    invoke-static {v0, p1}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_0

    .line 1270
    :catch_0
    move-exception p1

    .line 1271
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ubcf5\uc81c \uc2e4\ud328: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1272
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1274
    :goto_0
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$25$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$25;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$25;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1275
    return-void
.end method
