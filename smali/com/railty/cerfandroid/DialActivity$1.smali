.class Lcom/railty/cerfandroid/DialActivity$1;
.super Ljava/lang/Object;
.source "DialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/DialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/DialActivity;

.field final synthetic val$number:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/DialActivity;Landroid/widget/EditText;)V
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

    .line 28
    iput-object p1, p0, Lcom/railty/cerfandroid/DialActivity$1;->this$0:Lcom/railty/cerfandroid/DialActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/DialActivity$1;->val$number:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 31
    iget-object p1, p0, Lcom/railty/cerfandroid/DialActivity$1;->val$number:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/DialActivity$1;->this$0:Lcom/railty/cerfandroid/DialActivity;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/DialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 35
    :try_start_0
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    nop

    .line 39
    iget-object p1, p0, Lcom/railty/cerfandroid/DialActivity$1;->this$0:Lcom/railty/cerfandroid/DialActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/DialActivity;->finish()V

    .line 40
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    return-void
.end method
