.class Lcom/railty/cerfandroid/LauncherActivity$13;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 397
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$13;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 402
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 398
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 400
    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$13;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p2}, Lcom/railty/cerfandroid/LauncherActivity;->access$1300(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CE\uc5d0\uc11c \uacf5\uc720 \ud3f4\ub354 \uc0ac\uc6a9 (\\\\"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 401
    return-void
.end method
