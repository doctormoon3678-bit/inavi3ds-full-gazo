.class Lcom/railty/cerfandroid/LauncherActivity$12;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 391
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$12;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 393
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$12;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$1200(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "CERF Storage"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method
