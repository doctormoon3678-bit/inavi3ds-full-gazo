.class public Lcom/railty/cerfandroid/CerfPhoneStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CerfPhoneStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "incoming_number"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v2, "RINGING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/railty/cerfandroid/CerfInCallService;->PublishState(ILjava/lang/String;)V

    sget-object v2, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/railty/cerfandroid/CallFallbackActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "OFFHOOK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/railty/cerfandroid/CerfInCallService;->PublishState(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "IDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/railty/cerfandroid/CerfInCallService;->PublishState(ILjava/lang/String;)V

    :cond_2
    :cond_3
    :goto_0
    return-void
.end method
