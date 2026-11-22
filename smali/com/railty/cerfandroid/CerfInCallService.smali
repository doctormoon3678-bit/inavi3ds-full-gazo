.class public final Lcom/railty/cerfandroid/CerfInCallService;
.super Landroid/app/Service;
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

.field private static currentState:I

.field private static currentNumber:Ljava/lang/String;

.field private static fallbackChanged:Ljava/lang/Runnable;

.field private static listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

.field private static service:Lcom/railty/cerfandroid/CerfInCallService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static getITelephony(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getITelephony"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static declared-synchronized Answer()Z
    .locals 3

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    invoke-static {v1}, Lcom/railty/cerfandroid/CerfInCallService;->getITelephony(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string p0, "answerRingingCall"

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Class;

    invoke-virtual {v2, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static declared-synchronized Hangup()Z
    .locals 3

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    invoke-static {v1}, Lcom/railty/cerfandroid/CerfInCallService;->getITelephony(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string p0, "endCall"

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Class;

    invoke-virtual {v2, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static declared-synchronized Hold(Z)Z
    .locals 1

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    monitor-exit v0

    const/4 p0, 0x0

    return p0
.end method

.method static declared-synchronized Mute(Z)Z
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    const-string p1, "audio"

    invoke-virtual {v1, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static CurrentState()I
    .locals 1

    sget v0, Lcom/railty/cerfandroid/CerfInCallService;->currentState:I

    return v0
.end method

.method static CurrentNumber()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/railty/cerfandroid/CerfInCallService;->currentNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method static NumberOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static declared-synchronized Speaker(Z)Z
    .locals 2

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    const-string p1, "audio"

    invoke-virtual {v1, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static declared-synchronized SetFallbackChanged(Ljava/lang/Runnable;)V
    .locals 1

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->fallbackChanged:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

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

    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized PublishState(ILjava/lang/String;)V
    .locals 3

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/railty/cerfandroid/CerfInCallService;->currentState:I

    sput-object p1, Lcom/railty/cerfandroid/CerfInCallService;->currentNumber:Ljava/lang/String;

    sget-object v1, Lcom/railty/cerfandroid/CerfInCallService;->listener:Lcom/railty/cerfandroid/CerfInCallService$Listener;

    sget-object v2, Lcom/railty/cerfandroid/CerfInCallService;->fallbackChanged:Ljava/lang/Runnable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CERF-InCall"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "call state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/railty/cerfandroid/CerfInCallService;->currentState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    sget p0, Lcom/railty/cerfandroid/CerfInCallService;->currentState:I

    sget-object p1, Lcom/railty/cerfandroid/CerfInCallService;->currentNumber:Ljava/lang/String;

    invoke-static {p1}, Lcom/railty/cerfandroid/CerfInCallService;->NumberOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/railty/cerfandroid/CerfInCallService$Listener;->CallChanged(ILjava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Lcom/railty/cerfandroid/CerfInCallService;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfInCallService;->service:Lcom/railty/cerfandroid/CerfInCallService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

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

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
