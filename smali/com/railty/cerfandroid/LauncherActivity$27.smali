.class Lcom/railty/cerfandroid/LauncherActivity$27;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->BuildContainerBar(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$current:Lcom/railty/cerfandroid/Containers$Info;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Lcom/railty/cerfandroid/Containers$Info;)V
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

    .line 1386
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$27;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$27;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1389
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$27;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$27;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    iget-object v1, v1, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \ubcf5\uc0ac\ubcf8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/LauncherActivity$27$1;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/LauncherActivity$27$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$27;)V

    const-string v2, "\ucee8\ud14c\uc774\ub108 \ubcf5\uc81c"

    invoke-static {p1, v2, v0, v1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2700(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V

    .line 1402
    return-void
.end method
