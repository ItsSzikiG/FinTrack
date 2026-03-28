package com.fintrack.repository;

import com.fintrack.entity.Account;
import com.fintrack.enums.AccountType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AccountRepository extends JpaRepository<Account, Long> {
    List<Account> findByUserId(Long userId);

    Account findByUserIdAndType(Long userId, AccountType type);

    @Query("SELECT a FROM Account a WHERE a.user.id = :userId AND a.balance > 0")
    List<Account> findByUserIdAndBalanceGreaterThanZero(Long userId);

}
