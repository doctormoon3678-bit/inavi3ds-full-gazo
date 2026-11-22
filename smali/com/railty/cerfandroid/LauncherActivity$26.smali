.class Lcom/railty/cerfandroid/LauncherActivity$26;
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


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1373
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$26;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1376
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$26;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v0, Lcom/railty/cerfandroid/LauncherActivity$26$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/LauncherActivity$26$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$26;)V

    const-string v1, "\uc0c8 \ucee8\ud14c\uc774\ub108"

    const-string v2, "\uc0c8 \uae30\uae30"

    invoke-static {p1, v1, v2, v0}, Lcom/railty/cerfandroid/LauncherActivity;->access$2700(Lcom/railty/cerfandroid/LauncherActivity;Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V

    .line 1384
    return-void
.end method
