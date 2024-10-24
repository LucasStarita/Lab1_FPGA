-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Wed Oct 23 22:43:22 2024
 
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY PARTE_D IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        X : IN STD_LOGIC := '0';
        LED1 : OUT STD_LOGIC;
        LED2 : OUT STD_LOGIC;
        LED3 : OUT STD_LOGIC;
        LED4 : OUT STD_LOGIC
    );
END PARTE_D;

ARCHITECTURE BEHAVIOR OF PARTE_D IS
    TYPE type_fstate IS (A,B,C,D,E,F,G);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,X)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= A;
            LED1 <= '0';
            LED2 <= '0';
            LED3 <= '0';
            LED4 <= '0';
        ELSE
            LED1 <= '0';
            LED2 <= '0';
            LED3 <= '0';
            LED4 <= '0';
            CASE fstate IS
                WHEN A =>
                    IF ((X = '0')) THEN
                        reg_fstate <= B;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= E;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= A;
                    END IF;

                    LED2 <= '0';

                    LED3 <= '0';

                    LED4 <= '0';

                    LED1 <= '0';
                WHEN B =>
                    reg_fstate <= C;

                    LED2 <= '1';

                    LED3 <= '1';

                    LED4 <= '0';

                    LED1 <= '0';
                WHEN C =>
                    IF ((X = '0')) THEN
                        reg_fstate <= D;
                    ELSIF ((X = '1')) THEN
                        reg_fstate <= G;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= C;
                    END IF;

                    LED2 <= '1';

                    LED3 <= '1';

                    LED4 <= '1';

                    LED1 <= '1';
                WHEN D =>
                    reg_fstate <= A;

                    LED2 <= '0';

                    LED3 <= '0';

                    LED4 <= '1';

                    LED1 <= '1';
                WHEN E =>
                    reg_fstate <= F;

                    LED2 <= '0';

                    LED3 <= '0';

                    LED4 <= '0';

                    LED1 <= '1';
                WHEN F =>
                    reg_fstate <= C;

                    LED2 <= '1';

                    LED3 <= '0';

                    LED4 <= '0';

                    LED1 <= '1';
                WHEN G =>
                    reg_fstate <= A;

                    LED2 <= '1';

                    LED3 <= '1';

                    LED4 <= '0';

                    LED1 <= '1';
                WHEN OTHERS => 
                    LED1 <= 'X';
                    LED2 <= 'X';
                    LED3 <= 'X';
                    LED4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
