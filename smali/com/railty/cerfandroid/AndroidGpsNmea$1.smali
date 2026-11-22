.class Lcom/railty/cerfandroid/AndroidGpsNmea$1;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$000(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$200(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$300(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    .line 56
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const-string v1, "\uc815\ud655\ud55c \uc704\uce58 \uad8c\ud55c \ud544\uc694"

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$500(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$500(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$500(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$600(Lcom/railty/cerfandroid/AndroidGpsNmea;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$700(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
