.class Lcom/railty/cerfandroid/LauncherActivity$24$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/LauncherActivity$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$24;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$24;

.field final synthetic val$rel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$24;Ljava/lang/String;)V
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

    .line 1289
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$24$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$24;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$24$1;->val$rel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Done(Ljava/lang/String;)V
    .locals 2

    .line 1291
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$24$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$24;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$24;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$24$1;->val$rel:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2600(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
