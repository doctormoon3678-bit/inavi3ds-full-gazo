.class interface abstract Lcom/railty/cerfandroid/CellBridge$Native;
.super Ljava/lang/Object;
.source "CellBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/CellBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Native"
.end annotation


# virtual methods
.method public abstract CallState(ILjava/lang/String;)V
.end method

.method public abstract DeliverSms(Ljava/lang/String;)V
.end method

.method public abstract Operator(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract Phonebook([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract PollAction()Ljava/lang/String;
.end method

.method public abstract Signal(I)V
.end method
