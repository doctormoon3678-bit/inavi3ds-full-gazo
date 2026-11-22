.class public final Lcom/railty/cerfandroid/CerfNotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "CerfNotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/CerfNotificationListener$Sink;
    }
.end annotation


# static fields
.field private static final MESSAGES_PACKAGE:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final SMS_DEDUP_MS:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "CERF-Notify"

.field private static final delivered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/railty/cerfandroid/CerfNotificationListener;

.field private static final recentSms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sink:Lcom/railty/cerfandroid/CerfNotificationListener$Sink;

.field private static final unreadKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/railty/cerfandroid/CerfNotificationListener;->delivered:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/railty/cerfandroid/CerfNotificationListener;->unreadKeys:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private static ConsumeSms(Ljava/lang/String;)Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/railty/cerfandroid/CerfNotificationListener;->Prune()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 95
    sget-object v0, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    return v2

    .line 101
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static declared-synchronized MarkAllRead()V
    .locals 8

    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->instance:Lcom/railty/cerfandroid/CerfNotificationListener;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->unreadKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    :try_start_1
    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->instance:Lcom/railty/cerfandroid/CerfNotificationListener;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/railty/cerfandroid/CerfNotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    nop

    .line 50
    :try_start_2
    sget-object v2, Lcom/railty/cerfandroid/CerfNotificationListener;->unreadKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 52
    :cond_1
    :try_start_3
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 53
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v5}, Lcom/railty/cerfandroid/CerfNotificationListener;->ReadAction(Landroid/app/Notification;)Landroid/app/Notification$Action;

    move-result-object v5

    .line 54
    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_2

    goto :goto_1

    .line 56
    :cond_2
    :try_start_4
    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V

    .line 57
    const-string v5, "CERF-Notify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "marked read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/railty/cerfandroid/CerfNotificationListener;->KeyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    goto :goto_1

    .line 58
    :catch_0
    move-exception v4

    .line 59
    :try_start_5
    const-string v5, "CERF-Notify"

    const-string v6, "read action canceled"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 52
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_4
    monitor-exit v0

    return-void

    .line 46
    :catch_1
    move-exception v1

    .line 47
    :try_start_6
    const-string v2, "CERF-Notify"

    const-string v3, "active notifications unavailable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    .line 42
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1
.end method

.method static declared-synchronized NoteSms(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    .line 80
    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    .line 81
    :cond_0
    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/railty/cerfandroid/CerfNotificationListener;->Prune()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 79
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static NumberOf(Landroid/os/Bundle;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[+0-9 ()-]{3,}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized Offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    .line 152
    if-eqz p4, :cond_7

    :try_start_0
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 153
    :cond_0
    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->delivered:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    .line 154
    :cond_1
    :try_start_1
    sget-object p1, Lcom/railty/cerfandroid/CerfNotificationListener;->unreadKeys:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object p0, Lcom/railty/cerfandroid/CerfNotificationListener;->delivered:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    const/16 p1, 0x200

    if-le p0, p1, :cond_2

    sget-object p0, Lcom/railty/cerfandroid/CerfNotificationListener;->delivered:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 156
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/railty/cerfandroid/CerfNotificationListener;->ConsumeSms(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit v0

    return-void

    .line 158
    :cond_3
    :try_start_2
    sget-object p1, Lcom/railty/cerfandroid/CerfNotificationListener;->sink:Lcom/railty/cerfandroid/CerfNotificationListener$Sink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    monitor-exit v0

    return-void

    .line 159
    :cond_4
    nop

    .line 160
    if-eqz p2, :cond_5

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 161
    :cond_5
    const-string p2, ""

    .line 162
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "] "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    :cond_6
    const-string p1, "CERF-Notify"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "rcs message from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object p1, Lcom/railty/cerfandroid/CerfNotificationListener;->sink:Lcom/railty/cerfandroid/CerfNotificationListener$Sink;

    invoke-interface {p1, p2, p0}, Lcom/railty/cerfandroid/CerfNotificationListener$Sink;->Deliver(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    .line 151
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 152
    :cond_7
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static Prune()V
    .locals 6

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    :goto_0
    sget-object v2, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 88
    sget-object v2, Lcom/railty/cerfandroid/CerfNotificationListener;->recentSms:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method private static ReadAction(Landroid/app/Notification;)Landroid/app/Notification$Action;
    .locals 5

    .line 65
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    iget-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-nez v1, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 71
    iget-object v4, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    iget-object v4, v3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    :goto_1
    const-string p1, "\uc77d\uc74c"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string p1, "read"

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_3
    :goto_3
    return-object v3

    .line 74
    :cond_4
    return-object v0

    .line 65
    :cond_5
    :goto_2
    return-object v0
.end method

.method static declared-synchronized SetSink(Lcom/railty/cerfandroid/CerfNotificationListener$Sink;)V
    .locals 1

    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    .line 77
    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfNotificationListener;->sink:Lcom/railty/cerfandroid/CerfNotificationListener$Sink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 77
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static KeyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static TelOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 146
    if-eqz p0, :cond_1

    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    .line 33
    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/railty/cerfandroid/CerfNotificationListener;->instance:Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-exit v0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onListenerDisconnected()V
    .locals 2

    .line 38
    const-class v0, Lcom/railty/cerfandroid/CerfNotificationListener;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->instance:Lcom/railty/cerfandroid/CerfNotificationListener;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/railty/cerfandroid/CerfNotificationListener;->instance:Lcom/railty/cerfandroid/CerfNotificationListener;

    :cond_0
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    .line 106
    if-eqz p1, :cond_6

    const-string v0, "com.samsung.android.messaging"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 110
    if-nez v1, :cond_2

    return-void

    .line 112
    :cond_2
    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 113
    invoke-static {v1, v2}, Lcom/railty/cerfandroid/CerfNotificationListener;->NumberOf(Landroid/os/Bundle;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .line 128
    invoke-static {p1}, Lcom/railty/cerfandroid/CerfNotificationListener;->KeyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/railty/cerfandroid/CerfNotificationListener;->KeyOf(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    const-string v0, "android.text"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    invoke-static {v4, v5, v3, v2, v0}, Lcom/railty/cerfandroid/CerfNotificationListener;->Offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 130
    return-void

    .line 108
    :cond_5
    :goto_0
    return-void

    .line 106
    :cond_6
    :goto_1
    return-void
.end method
