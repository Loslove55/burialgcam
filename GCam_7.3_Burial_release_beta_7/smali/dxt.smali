.class final synthetic Ldxt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lpmj;


# direct methods
.method public constructor <init>(Lpmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxt;->a:Lpmj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldxt;->a:Lpmj;

    invoke-interface {v0}, Lpmj;->get()Ljava/lang/Object;

    return-void
.end method
