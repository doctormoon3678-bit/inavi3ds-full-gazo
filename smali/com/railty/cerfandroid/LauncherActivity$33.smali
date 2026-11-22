.class Lcom/railty/cerfandroid/LauncherActivity$33;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->AskName(Ljava/lang/String;Ljava/lang/String;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$cb:Lcom/railty/cerfandroid/LauncherActivity$NameCallback;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/EditText;Lcom/railty/cerfandroid/LauncherActivity$NameCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1530
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$33;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$33;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$33;->val$cb:Lcom/railty/cerfandroid/LauncherActivity$NameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1533
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$33;->val$edit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1534
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$33;->val$cb:Lcom/railty/cerfandroid/LauncherActivity$NameCallback;

    invoke-interface {p2, p1}, Lcom/railty/cerfandroid/LauncherActivity$NameCallback;->Done(Ljava/lang/String;)V

    .line 1535
    :cond_0
    return-void
.end method
