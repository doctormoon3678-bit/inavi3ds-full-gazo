.class final Lcom/railty/cerfandroid/CellBridge;
.super Ljava/lang/Object;
.source "CellBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/CellBridge$Native;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CERF-Cell"


# instance fields
.field private final bringToFront:Ljava/lang/Runnable;

.field private final contactsObserver:Landroid/database/ContentObserver;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private listener:Landroid/telephony/PhoneStateListener;

.field private final sink:Lcom/railty/cerfandroid/CellBridge$Native;

.field private final smsReceiver:Landroid/content/BroadcastReceiver;

.field private final telecom:Landroid/telecom/TelecomManager;

.field private final telephony:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/railty/cerfandroid/CellBridge$Native;Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/railty/cerfandroid/CellBridge$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/CellBridge$1;-><init>(Lcom/railty/cerfandroid/CellBridge;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v0, Lcom/railty/cerfandroid/CellBridge$2;

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/railty/cerfandroid/CellBridge$2;-><init>(Lcom/railty/cerfandroid/CellBridge;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->contactsObserver:Landroid/database/ContentObserver;

    .line 33
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/railty/cerfandroid/CellBridge;->sink:Lcom/railty/cerfandroid/CellBridge$Native;

    .line 35
    iput-object p3, p0, Lcom/railty/cerfandroid/CellBridge;->bringToFront:Ljava/lang/Runnable;

    .line 36
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    .line 37
    const-string p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    .line 38
    return-void
.end method

.method private LoadContacts()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/railty/cerfandroid/CellBridge$3;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CellBridge$3;-><init>(Lcom/railty/cerfandroid/CellBridge;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method private ReturnToEmulator()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->bringToFront:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->bringToFront:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method private Run(Ljava/lang/String;)V
    .locals 5

    .line 188
    const-string v0, "hold"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CERF-Cell"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_0
    const-string v1, "dial:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    const-string v1, "tel"

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/railty/cerfandroid/CellBridge;->IsDefaultDialer()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/railty/cerfandroid/CellBridge;->ReturnToEmulator()V

    goto/16 :goto_0

    .line 193
    :cond_0
    const-string v1, "answer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-static {}, Lcom/railty/cerfandroid/CerfInCallService;->Answer()Z

    move-result v0

    if-nez v0, :cond_8

    .line 195
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 196
    invoke-direct {p0}, Lcom/railty/cerfandroid/CellBridge;->ReturnToEmulator()V

    goto :goto_0

    .line 198
    :cond_1
    const-string v1, "hangup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-static {}, Lcom/railty/cerfandroid/CerfInCallService;->Hangup()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "sms:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/CellBridge;->SendSms(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    const-string v1, "smsread"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-static {}, Lcom/railty/cerfandroid/CerfNotificationListener;->MarkAllRead()V

    goto :goto_0

    .line 204
    :cond_4
    const-string v1, "speaker:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "1"

    if-eqz v1, :cond_5

    .line 205
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/railty/cerfandroid/CerfInCallService;->Speaker(Z)Z

    goto :goto_0

    .line 206
    :cond_5
    const-string v1, "mute:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/railty/cerfandroid/CerfInCallService;->Mute(Z)Z

    goto :goto_0

    .line 208
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "unhold"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/railty/cerfandroid/CerfInCallService;->Hold(Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :cond_8
    :goto_0
    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing permission for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    :goto_1
    return-void
.end method

.method private SendSms(Ljava/lang/String;)V
    .locals 8

    .line 217
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 218
    if-gtz v0, :cond_0

    return-void

    .line 219
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 220
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    const-class v1, Landroid/telephony/SmsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/SmsManager;

    .line 222
    if-nez v2, :cond_1

    return-void

    .line 223
    :cond_1
    invoke-virtual {v2, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    return-void
.end method

.method static synthetic access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/CellBridge;->sink:Lcom/railty/cerfandroid/CellBridge$Native;

    return-object p0
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/CellBridge;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/railty/cerfandroid/CellBridge;->LoadContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/CellBridge;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/railty/cerfandroid/CellBridge;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/railty/cerfandroid/CellBridge;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/railty/cerfandroid/CellBridge;->ReturnToEmulator()V

    return-void
.end method

.method static synthetic access$500(Lcom/railty/cerfandroid/CellBridge;)Ljava/lang/Runnable;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/CellBridge;->bringToFront:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/railty/cerfandroid/CellBridge;)Landroid/os/Handler;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/CellBridge;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method IsDefaultDialer()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->telecom:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method Poll()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->sink:Lcom/railty/cerfandroid/CellBridge$Native;

    invoke-interface {v0}, Lcom/railty/cerfandroid/CellBridge$Native;->PollAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/railty/cerfandroid/CellBridge;->Run(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->sink:Lcom/railty/cerfandroid/CellBridge$Native;

    invoke-interface {v0}, Lcom/railty/cerfandroid/CellBridge$Native;->PollAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method Start()V
    .locals 6

    .line 109
    const-string v0, "CERF-Cell"

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/railty/cerfandroid/CellBridge;->LoadContacts()V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/railty/cerfandroid/CellBridge;->contactsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contacts observer skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/railty/cerfandroid/CellBridge;->smsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.BROADCAST_SMS"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->sink:Lcom/railty/cerfandroid/CellBridge$Native;

    iget-object v2, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/railty/cerfandroid/CellBridge$Native;->Operator(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/railty/cerfandroid/CellBridge$4;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CellBridge$4;-><init>(Lcom/railty/cerfandroid/CellBridge;)V

    iput-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    .line 145
    new-instance v1, Lcom/railty/cerfandroid/CellBridge$5;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CellBridge$5;-><init>(Lcom/railty/cerfandroid/CellBridge;)V

    invoke-static {v1}, Lcom/railty/cerfandroid/CerfInCallService;->SetListener(Lcom/railty/cerfandroid/CerfInCallService$Listener;)V

    .line 156
    nop

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x121

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    goto :goto_1

    .line 159
    :catch_1
    move-exception v1

    .line 160
    const-string v2, "call state needs READ_PHONE_STATE"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 163
    :goto_1
    return-void
.end method

.method Stop()V
    .locals 4

    .line 175
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/railty/cerfandroid/CerfInCallService;->SetListener(Lcom/railty/cerfandroid/CerfInCallService$Listener;)V

    .line 176
    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/railty/cerfandroid/CellBridge;->telephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 177
    :cond_0
    iput-object v0, p0, Lcom/railty/cerfandroid/CellBridge;->listener:Landroid/telephony/PhoneStateListener;

    .line 178
    return-void
.end method
