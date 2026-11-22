.class public final Lcom/railty/cerfandroid/CerfInCallService;
.super Landroid/telecom/InCallService;
.source "CerfInCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/CerfInCallService$Listener;
    }
.end annotation


# static fields
.field static final STATE_ACTIVE:I = 0x2

.field static final STATE_DIALING:I = 0x3

.field static final STATE_IDLE:I = 0x0

.field static final STATE_RINGING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CERF-InCall"

.field private static current:Landroid/telecom/Call;

.field private static fallbackChanged:Ljava/lang/Runnable;

.field private static listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

.field private static service:Lcom/railty/cerfandroid/CerfInCallService;


# instance fields
.field private final callback:Landroid/telecom/Call$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    .line 27
    new-instance v0, Lcom/railty/cerfandroid/CerfInCallService$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/CerfInCallService$1;-><init>(Lcom/railty/cerfandroid/CerfInCallService;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CerfInCallService;->callback:Landroid/telecom/Call$Callback;

    return-void
.end method

.method static declared-synchronized Answer()Z
    .locals 4

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {v1, v2}, Landroid/telecom/Call;->answer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 60
    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static declared-synchronized Current()Landroid/telecom/Call;
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static declared-synchronized Hangup()Z
    .locals 4

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 97
    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 95
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static declared-synchronized Hold(Z)Z
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    sget-object p0, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {p0}, Landroid/telecom/Call;->hold()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    invoke-virtual {p0}, Landroid/telecom/Call;->unhold()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 77
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static declared-synchronized Mute(Z)Z
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    invoke-virtual {v1, p0}, Lcom/railty/cerfandroid/CerfInCallService;->setMuted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 65
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static NumberOf(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 2

    .line 54
    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    .line 56
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    .line 54
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static Publish(Landroid/telecom/Call;)V
    .locals 6

    .line 105
    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

    .line 107
    sget-object v2, Lcom/railty/cerfandroid/CerfInCallService;->fallbackChanged:Ljava/lang/Runnable;

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-static {p0}, Lcom/railty/cerfandroid/CerfInCallService;->StateOf(Landroid/telecom/Call;)I

    move-result v0

    .line 110
    const-string v3, "CERF-InCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/railty/cerfandroid/CerfInCallService;->NumberOf(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lcom/railty/cerfandroid/CerfInCallService$Listener;->CallChanged(ILjava/lang/String;)V

    .line 112
    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 113
    :cond_1
    return-void

    .line 108
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized SetFallbackChanged(Ljava/lang/Runnable;)V
    .locals 1

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 36
    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->fallbackChanged:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 36
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized SetListener(Lcom/railty/cerfandroid/CerfInCallService$Listener;)V
    .locals 1

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 34
    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized Speaker(Z)Z
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    invoke-virtual {v1, p0}, Lcom/railty/cerfandroid/CerfInCallService;->setAudioRoute(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 71
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static StateOf(Landroid/telecom/Call;)I
    .locals 1

    .line 41
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 49
    :pswitch_0
    return v0

    .line 48
    :pswitch_1
    const/4 p0, 0x2

    return p0

    .line 43
    :pswitch_2
    const/4 p0, 0x1

    return p0

    .line 46
    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/telecom/Call;)V
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/railty/cerfandroid/CerfInCallService;->Publish(Landroid/telecom/Call;)V

    return-void
.end method


# virtual methods
.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2

    .line 117
    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 118
    :try_start_0
    sput-object p1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    iget-object v0, p0, Lcom/railty/cerfandroid/CerfInCallService;->callback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 122
    const-class v1, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v1

    .line 123
    :try_start_1
    sget-object v0, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {p1}, Lcom/railty/cerfandroid/CerfInCallService;->Publish(Landroid/telecom/Call;)V

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/railty/cerfandroid/CallFallbackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/railty/cerfandroid/CerfInCallService;->startActivity(Landroid/content/Intent;)V

    .line 130
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 119
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/railty/cerfandroid/CerfInCallService;->callback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 135
    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/railty/cerfandroid/CerfInCallService;->current:Landroid/telecom/Call;

    .line 137
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    const-class v1, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v1

    .line 141
    :try_start_1
    sget-object v0, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

    .line 142
    sget-object v2, Lcom/railty/cerfandroid/CerfInCallService;->fallbackChanged:Ljava/lang/Runnable;

    .line 143
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/railty/cerfandroid/CerfInCallService;->NumberOf(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/railty/cerfandroid/CerfInCallService$Listener;->CallChanged(ILjava/lang/String;)V

    .line 145
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 146
    :cond_2
    return-void

    .line 143
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 137
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/telecom/InCallService;->onCreate()V

    .line 86
    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .line 91
    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-super {p0}, Landroid/telecom/InCallService;->onDestroy()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
